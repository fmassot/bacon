
assert = require 'assert'
request = require 'request'
app = require '../../server'

describe "authentification", ->
    describe "GET /login", ->
        body = null
        before (done) ->
            options = 
                uri: "http://localhost:3000/login"
            request options, (err, resp, _body) ->
                body = _body
                done()

        it " first test with mocha ", ->
            assert.ok /user/.test(body)
