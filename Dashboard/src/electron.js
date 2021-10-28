/* eslint global-require: off, no-console: off */
const path = require("path");
const { BrowserWindow } = require("electron-acrylic-window");

const { app, Tray, Menu } = require("electron");
const isDev = require("electron-is-dev");
const screenz = require("screenz");
const els = require("electron-localshortcut");
const devTools = require("electron-devtools-installer");
const chalk = require("chalk");

const windowWidth = 900;
const windowHeight = 300;

let tray = null;
let mainWindow = null;
const gotTheLock = app.requestSingleInstanceLock();

// Conditionally include the dev tools installer to load React Dev Tools
const installExtension = devTools.default;
const { REACT_DEVELOPER_TOOLS } = devTools;

// Handle creating/removing shortcuts on Windows when installing/uninstalling
if (require("electron-squirrel-startup")) {
  app.quit();
}

const RESOURCES_PATH = app.isPackaged
  ? path.join(process.resourcesPath, "assets")
  : path.join(__dirname, "../assets");

const getAssetPath = (...paths) => path.join(RESOURCES_PATH, ...paths);

function createWindow() {
  // Create the browser window.
  const win = new BrowserWindow({
    width: windowWidth,
    height: windowHeight,
    x: screenz.width - windowWidth,
    y: screenz.height - windowHeight,
    webPreferences: {
      nodeIntegration: true,
      enableRemoteModule: true,
      contextIsolation: false,
    },
    transparent: true,
    movable: false,
    resizable: false,
    frame: false,
    show: false,
    skipTaskbar: true,
    alwaysOnTop: true,
    vibrancy: {
      effect: "acrylic",
      useCustomWindowRefreshMethod: true,
      disableOnBlur: false,
    },
  });

  // and load the index.html of the app.
  win.loadURL(
    isDev
      ? "http://localhost:8080"
      : `file://${path.join(__dirname, "../build/index.html")}`,
  );

  if (isDev) {
    win.webContents.openDevTools({ mode: "detach" });

    const reduxDevTools = require("@redux-devtools/cli").default;
    reduxDevTools({ hostname: "localhost", port: 8000 }).then(() => {
      console.log(chalk.blue("RemoteDev server running at http://localhost:8000/"));
    });
  }

  // Register shortcut to open devtools
  els.register(win, "Ctrl+Shift+I", () => {
    if (win.webContents.isDevToolsOpened()) {
      win.webContents.closeDevTools();
    } else {
      win.webContents.openDevTools({ mode: "detach" });
    }
  });

  return win;
}

// Quit when all windows are closed, except on macOS. There, it's common
// for applications and their menu bar to stay active until the user quits
// explicitly with Cmd + Q.
app.on("window-all-closed", () => {
  if (process.platform !== "darwin") {
    app.quit();
  }
});

app.on("activate", () => {
  // On macOS it's common to re-create a window in the app when the
  // dock icon is clicked and there are no other windows open.
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow();
  }
});

// Hide window when out of focus
app.on("browser-window-blur", () => {
  if (!isDev) {
    mainWindow.hide();
  }
});

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and require them here.

function createTray() {
  const trayIcon = new Tray(getAssetPath("tray.ico"));
  const contextMenu = Menu.buildFromTemplate([
    {
      label: "Show",
      click: () => {
        mainWindow.show();
      },
    },
    {
      label: "Exit",
      click: () => {
        app.quit();
      },
    },
  ]);

  trayIcon.setToolTip("Light Control");
  trayIcon.setContextMenu(contextMenu);
  return trayIcon;
}

// Force single app instance
if (!gotTheLock) {
  app.quit();
} else {
  app.on("second-instance", () => {
    mainWindow.show();
  });

  app.on("ready", async () => {
    app.allowRendererProcessReuse = false;
    mainWindow = createWindow();

    installExtension(REACT_DEVELOPER_TOOLS)
      .then((name) => console.log(`Added Extension:  ${name}`))
      .catch((error) => console.log(`An error occurred: , ${error}`));

    mainWindow.setMenu(null);

    mainWindow.webContents.on("did-frame-finish-load", () => {
      // Create tray icon with context menu
      tray = createTray();
      mainWindow.setBounds({ y: (screenz.height - mainWindow.getBounds().height) - tray.getBounds().height });

      // Listen to tray icon onclick event
      tray.on("click", () => {
        mainWindow.show();
      });
    });
  });
}
