# Package

version       = "0.1.0"
author        = "Chocotone"
description   = "My Awesome Chocotone Application"
license       = "MIT"
srcDir        = "src"
bin           = @["chocotone_starter"]
binDir        = "bin"

# Dependencies

requires "nim >= 1.6.4"
requires "chocotone"

after build:
    exec "clear"

task up, "Open Chocotone application":
    exec "./bin/" & bin[0]

task dev, "Compile Chocotone in development mode":
    exec "nimble build --threads:on --gc:arc"
    exec "nimble up"

task prod, "Compile Chocotone in release mode":
    exec "nimble build -d:release --threads:on --gc:arc --opt:size --checks:off --stackTrace:off"