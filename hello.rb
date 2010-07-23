require 'bundler'
Bundler.setup
require 'sinatra'

get '/' do
  "HELLO!"
end

post '/recieve' do
  raise "That hurt! #{params[:from]} :-)"
end
