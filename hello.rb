require 'bundler'
Bundler.setup
require 'sinatra'

get '/' do
  "HELLO!"
end
