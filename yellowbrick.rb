get '/' do
  @articles = Article.all
  haml :list
end

post '/receive' do
  article = Article.create({
    :title => params[:subject],
    :body => params[:text],
    :slug => params[:subject].gsub(/\s/,'-')
  })
  article.save
end

get '/style.css' do
  sass :style
end

get '/post/:slug' do |slug|
  @article = Article.first(:slug => slug)
  haml :show
end

