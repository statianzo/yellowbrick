require 'sinatra/base'

helpers do
  def partial(template, locals={})
    haml(template, :layout => false, :locals => locals)
  end
end
