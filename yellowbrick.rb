get '/' do
  @articles = Article.all
  haml :list
end

post '/receive' do
  article = Article.create({
    :title => params[:subject],
    :body => params[:text]
  })
  article.save
end

def posts
  db = mongo
  db.collection("posts")
end

