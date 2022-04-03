# This is just a simple Chocotone Project Starter
import chocotone/framework

when isMainModule:
    const appTitle = "Chocotone starter"
    var app = newApp(title = appTitle, w = 920, h = 550)
    var mainWindow = app.newWindow(title = appTitle, w = 920, h = 550, x = 0, y = 0)
                        .addDefaultMenu()
                        .alignCenter()
                        .makeKeyAndOrderFront()
    app.start()
