require 'bundler'
Bundler.setup
require 'sinatra'

#database
require 'mongo_mapper'
require 'uri'
uri = URI.parse(ENV['MONGOHQ_URL'])
MongoMapper.connection = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
MongoMapper.database= uri.path.gsub(/^\//, '')

#app
require 'models/article'
require 'helpers'
require 'yellowbrick'
