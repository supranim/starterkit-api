import pkg/supranim/controller

ctrl getHomepage:
  ## Returns a JSON welcome payload
  json(%*{"status": "ok", "message": "Welcome to Supranim REST API"})
