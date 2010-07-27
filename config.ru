require 'bundler'
Bundler.setup
require 'sinatra'

#database
require 'mongo_mapper'
require 'database'

#app
require 'models/article'
require 'helpers'
require 'yellowbrick'

run Sinatra::Application
