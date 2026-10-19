import pkg/supranim/controller

ctrl get4xx:
  ## Returns a JSON 404 error payload
  json(%*{"error": "Not found"}, Http404)
