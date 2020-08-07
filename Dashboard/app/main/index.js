import path from 'path';
import { app, BrowserWindow, Menu, Tray } from 'electron';
import screenz from 'screenz';

//App preferences
const windowSize = { width: 620, height: 320 };
const windowOffset = 40;
const appIconPath = '../../dist-assets/icon.ico';
const trayIconPath = '../../dist-assets/tray.ico';

let mainWindow = null;
let mainWindowHidden = true;
let trayIcon = null;
const isDevelopment = process.env.NODE_ENV === 'development';
const gotTheLock = app.requestSingleInstanceLock();
app.allowRendererProcessReuse = false;

//Install chrome devtools extensions
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

//Force single app instance
if (!gotTheLock) {
  app.quit();
} else {
  app.on('second-instance', () => {
    mainWindow.show();
    mainWindow.focus();
  });

  app.on('ready', async () => {
    if (isDevelopment) {
      await installExtensions();
    }

    //Initialize window
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

    //Create tray icon with context menu
    trayIcon = createTray();

    //Listen to tray icon onclick event
    trayIcon.on('click', () => {
      mainWindow.show();
      mainWindow.focus();
    });

    //Open devtools on startup
    mainWindow.webContents.on('did-finish-load', () => {
      mainWindow.webContents.openDevTools();
    });
  });
}

//Tray creation
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

  trayIcon.setToolTip('Light Control');
  trayIcon.setContextMenu(contextMenu);
  return trayIcon;
}

//Hide window when out of focus
app.on('browser-window-blur', () => {
  mainWindow.hide();
});
