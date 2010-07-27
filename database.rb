require 'uri'
uri = URI.parse(ENV['MONGOHQ_URL'])
MongoMapper.connection = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
MongoMapper.database= uri.path.gsub(/^\//, '')
