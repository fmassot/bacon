
routes = (app) ->

    app.get '/login', (req, res) ->
        res.render "#{__dirname}/views/login",
            title: 'Login'

    app.post '/sessions', (req, res) ->
        res.redirect '/login'

module.exports = routes
