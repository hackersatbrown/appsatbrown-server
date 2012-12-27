should = require "should"
t = require "testify"
_ =  require "underscore"

testData = require "./_data"

client = t.createJsonClient port: 3000

describe "/apps", ->

  describe "GET", ->

    it "should send a list of all apps", (done) ->
      client.get "/apps", t.shouldNotErr (req, res, data) ->
        should.be.eql data, testData.apps
        done()
