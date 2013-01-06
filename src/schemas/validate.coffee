jsv = require("jsv").JSV

# TODO
# - JSV doesn't check format of strings
# - Pick which properties are required
# - Add descriptions (not that important here)

env = jsv.createEnvironment "json-schema-draft-03"

user = require "./user"
app = require "./app"
api = require "./api"

appS = env.createSchema app
userS = env.createSchema user
apiS = env.createSchema api
#console.log apiS

user1 =
  id: "12345"
  name: "Bob"
  email: "bob@gmail.com"
  apps: ["app1"]
app1 =
  id: "1"
  name: "Best"
  description: "cool"
  developers: ["user2"]
  apiKeys: ["key1"]
  tags: ["fun"]
  picture: "blah"
  link: "nope"
  published: true
api1 =
  id: "api1"
  name: "courses"
  docs: "docs"
  keys: [
    id: "key1"
    api: "api1"
  ]

report = env.validate user1, user
console.log report.errors
report = env.validate app1, app
console.log report.errors
report = env.validate api1, api
console.log report.errors
