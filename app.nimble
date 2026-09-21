# Package

version        = "0.1.0"
author         = "$supraAuthorNimble"
description    = "A new awesome Supranim REST API application"
license        = "$supraAuthorLicense"
srcDir         = "src"
bin            = @["$supraBinName"]
binDir         = "build"


# Dependencies

requires "nim >= 2.0.0"
requires "supranim >= 0.1.11"
requires "emitter >= 0.2.1"
requires "limiter >= 0.1.0"
requires "bag >= 0.1.0"
requires "openparser >= 0.3.0"

import std/[os, strutils]
task service, "Build a Supranim Service":
  # A task to build a specific service by name.
  # Usage: `nimble service <serviceName>`
  let params = commandLineParams()
  exec "nimble c --opt:speed -d:useMalloc --path: --mm:arc --out:./bin/" & bin[0] & "_" & params[^1] & " ./src/service/" & params[^1] & ".nim"
