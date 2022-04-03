# Chocotone is an Open Source framework
# for building beautiful macOS native desktop applications.
# 
# This is a Starter Project for building cool Desktop Native Applications
#
# (c) 2021 Chocotone is released under MIT License
#          Developed by Humans from OpenPeep
#          
#          Website https://openpeep.ro
#          Github links:
#               https://github.com/chocotone
#               https://github.com/openpeep

import chocotone/framework

when isMainModule:
    const appTitle = "Chocotone starter"
    var app = newApp(title = appTitle, w = 920, h = 550)
    var mainWindow = app.newWindow(title = appTitle, w = 920, h = 550, x = 0, y = 0)
                        .addDefaultMenu()
                        .alignCenter()
                        .makeKeyAndOrderFront()
    app.start()
