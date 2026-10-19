#
# This is the main file for the Supranim application.
#
# It initializes the application, loads configurations,
# and sets up the necessary services and middlewares.
#
import pkg/supranim

#
# Init core modules using `init` macro
#
App.init()

proc startCommand(v: Values) =
  ## Kapsis `init` command handler
  initStartCommand(v, createDirs = false)

App.cli do:
  start path(project):
    ## Init the app with the given installation path

#
# Initialize available Service Providers.
#
# Configuration files are defined as YAML in the
# `src/config/` directory.
#
App.services do:
  # init Logger Service
  logger.init()
  
  # Initialize the global event emitter service. This service provides a
  # singleton event emitter that can be used throughout the application to
  # emit and listen for custom events.
  events.init()

  # init DB Engine
  db.init()

  # initialize your service providers here

#
# Starts the application. This will start the HTTP
# server and listen for incoming requests.
#
# The application will be available at the specified port.
#
App.run()