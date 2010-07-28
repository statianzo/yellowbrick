class Article
  include MongoMapper::Document

  key :title, String
  key :body, String
  key :slug, String, :unique => true
  timestamps!
end
