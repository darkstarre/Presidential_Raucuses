require 'sinatra'
require 'meganlib.rb'

set :port, 1337
set :static, true
set :public_folder, "static"
set :views, "views"
enable :sessions
set :session_secret, 'BADSECRET'

get '/' do
  "Hello"
end
