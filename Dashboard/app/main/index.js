import path from 'path';
import { app, BrowserWindow, Menu, Tray } from 'electron';
const screenz = require('screenz');

const isDevelopment = process.env.NODE_ENV === 'development';

let mainWindow = null;
let tray = null;
let forceQuit = false;

const windowSize = { width: 620, height: 320 };
const taskBarHeight = 40;

const installExtensions = async () => {
  const installer = require('electron-devtools-installer');
  const extensions = ['REACT_DEVELOPER_TOOLS', 'REDUX_DEVTOOLS'];
  const forceDownload = !!process.env.UPGRADE_EXTENSIONS;
  for (const name of extensions) {
    try {
      await installer.default(installer[name], forceDownload);
    } catch (e) {
      console.log(`Error installing ${name} extension: ${e.message}`);
    }
  }
};

app.on('window-all-closed', () => {
  // On OS X it is common for applications and their menu bar
  // to stay active until the user quits explicitly with Cmd + Q
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('ready', async () => {
  if (isDevelopment) {
    await installExtensions();
  }

  mainWindow = new BrowserWindow({
    width: windowSize.width,
    height: windowSize.height,
    x: screenz.width - windowSize.width,
    y: screenz.height - windowSize.height - taskBarHeight,
    movable: false,
    resizable: false,
    transparent: true,
    frame: false,
    show: false,
    skipTaskbar: true,
    alwaysOnTop: true,
    webPreferences: {
      nodeIntegration: true,
    },
    icon: path.join(__dirname, '../../dist-assets/icon2.ico'),
  });

  mainWindow.setMenu(null);

  mainWindow.loadFile(path.resolve(path.join(__dirname, '../renderer/index.html')));

  // show window once on first load
  mainWindow.webContents.once('did-finish-load', () => {
    mainWindow.show();
  });

  mainWindow.webContents.on('did-finish-load', () => {
    // Handle window logic properly on macOS:
    // 1. App should not terminate if window has been closed
    // 2. Click on icon in dock should re-open the window
    // 3. ⌘+Q should close the window and quit the app
    if (process.platform === 'darwin') {
      mainWindow.on('close', function (e) {
        if (!forceQuit) {
          e.preventDefault();
          mainWindow.hide();
        }
      });

      app.on('activate', () => {
        mainWindow.show();
      });

      app.on('before-quit', () => {
        forceQuit = true;
      });
    } else {
      mainWindow.on('closed', () => {
        tray.destroy();
        mainWindow = null;
      });

      app.on('browser-window-blur', () => {
        if (mainWindow) {
          mainWindow.hide();
        }
      });
    }

    tray = createTray();
  });

  function createTray() {
    const appIcon = new Tray(path.join(__dirname, '../../dist-assets/tray.ico'));
    const contextMenu = Menu.buildFromTemplate([
      {
        label: 'Show',
        click: () => {
          mainWindow.show();
        },
      },
      {
        label: 'Hide',
        click: () => {
          mainWindow.hide();
        },
      },
      {
        label: 'Exit',
        click: () => {
          app.isQuiting = true;
          app.quit();
        },
      },
    ]);

    appIcon.on('click', () => {
      mainWindow.show();
    });

    appIcon.setToolTip('Light Control');
    appIcon.setContextMenu(contextMenu);
    return appIcon;
  }

  if (isDevelopment) {
    // auto-open dev tools
    mainWindow.webContents.openDevTools();

    // add inspect element on right click menu
    mainWindow.webContents.on('context-menu', (e, props) => {
      Menu.buildFromTemplate([
        {
          label: 'Inspect element',
          click() {
            mainWindow.inspectElement(props.x, props.y);
          },
        },
      ]).popup(mainWindow);
    });
  }
});
