express = require "express"
http = require "http"

app = express()

# Config
app.set "name", "Apps at Brown Server"
app.set "port", process.env.PORT or 3000

# Middleware
app.use express.logger "dev"
app.use express.bodyParser()
app.use express.methodOverride()
app.use app.router

# Error middleware
app.use express.errorHandler()

# Define our routes
# TODO we'll probably want to factor this out into a separate file
app.all "*", (req, res) ->
  res.send 500, "Not yet implemented"

http.createServer(app).listen app.get("port"), ->
  console.log "#{app.get "name"} listening on port #{app.get "port"}" 
