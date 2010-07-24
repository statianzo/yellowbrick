require 'bundler'
Bundler.setup
require 'sinatra'

get '/' do
  "HELLO!"
end

post '/receive' do
  raise "That hurt! #{params[:from]} :-)"
end
