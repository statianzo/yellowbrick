require 'bundler'
Bundler.setup
require 'sinatra'
require 'mongo'
require 'uri'

Post = Struct.new(:title, :body)
get '/' do
  @posts = posts.find.collect {|p| Post.new(p['title'], p['body'])}
  haml :list
end

post '/receive' do
  email = {:title => params[:subject], :body => params[:text]}
  posts.insert email
end

def posts
  db = mongo
  db.collection("posts")
end

def mongo
  uri = URI.parse(ENV['MONGOHQ_URL'])
  connection = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
  db = connection.db(uri.path.gsub(/^\//, ''))
end
