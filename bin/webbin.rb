#usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require 'erb'
require 'sinatra'
require 'meganlib.rb'
include Candidates

set :port, 1337
set :static, true
set :public_folder, "static"
set :views, "views"
enable :sessions
set :session_secret, 'BADSECRET'

get '/' do
  @whatever = 
  
  "Welcome to the Presidential Raucuses!\r
  Get ready to show the public what you stand for...\r
  ...and what you will fall for!\r\r

  Press 'h' for help, and 'q' to quit. Press any other key to continue."
  
  erb :views  

#  user_input = $stdin.gets.chomp.to_s
#     if user_input == "q"
#    puts "You've died because you suck"
#    exit
#  elsif  user_input =="h"
#    puts "What would you like help with?"
#    help
#  else
#    puts "Who will you be campaigning as?"
#    self.candidate_choice
# end
end

