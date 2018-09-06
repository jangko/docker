packageName   = "docker"
version       = "1.0.0"
author        = "Andri Lim"
description   = "docker test repository"
license       = "MIT"
skipDirs      = @["benchmark"]

### Dependencies

requires "nim > 0.18.0"

task test, "Run all tests":
  exec "nim c -d:release benchmark/bot"
  
