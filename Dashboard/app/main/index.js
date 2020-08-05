import path from 'path';
import { app, BrowserWindow, Menu, Tray } from 'electron';
const screenz = require('screenz');

let mainWindow = null;

const isDevelopment = process.env.NODE_ENV === 'development';
const gotTheLock = app.requestSingleInstanceLock();
app.allowRendererProcessReuse = false;

const windowSize = { width: 620, height: 320 };
const windowOffset = 40;
const appIconPath = '../../dist-assets/icon2.ico';
const trayIconPath = '../../dist-assets/tray.ico';

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

if (!gotTheLock) {
  app.quit();
} else {
  app.on('second-instance', () => {
    // Someone tried to run a second instance, we should focus our window.
    if (mainWindow) {
      mainWindow.show();
      mainWindow.focus();
    }
  });

  // Create mainWindow, load the rest of the app, etc...
  app.on('ready', async () => {
    if (isDevelopment) {
      await installExtensions();
    }

    mainWindow = new BrowserWindow({
      width: windowSize.width,
      height: windowSize.height,
      x: screenz.width - windowSize.width,
      y: screenz.height - windowSize.height - windowOffset,
      movable: false,
      resizable: false,
      frame: false,
      show: false,
      skipTaskbar: true,
      alwaysOnTop: true,
      webPreferences: {
        nodeIntegration: true,
      },
      icon: path.join(__dirname, appIconPath),
    });

    mainWindow.setMenu(null);
    mainWindow.loadFile(path.resolve(path.join(__dirname, '../renderer/index.html')));

    mainWindow.webContents.on('did-finish-load', () => {
      createTray();
    });

    if (isDevelopment) {
      mainWindow.webContents.openDevTools();

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
}

function createTray() {
  const trayIcon = new Tray(path.join(__dirname, trayIconPath));
  const contextMenu = Menu.buildFromTemplate([
    {
      label: 'Show',
      click: () => {
        mainWindow.show();
        mainWindow.focus();
      },
    },
    {
      label: 'Exit',
      click: () => {
        app.quit();
      },
    },
  ]);

  trayIcon.on('click', () => {
    mainWindow.show();
    mainWindow.focus();
  });

  trayIcon.setToolTip('Light Control');
  trayIcon.setContextMenu(contextMenu);
  return trayIcon;
}

app.on('browser-window-blur', () => {
  mainWindow.hide();
});

app.on('window-all-closed', () => {
  app.quit();
});
