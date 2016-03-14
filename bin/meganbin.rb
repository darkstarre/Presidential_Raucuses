#usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require 'meganlib.rb'
require 'text.rb'
require 'socket'
include Candidates

"Welcome to the Presidential Raucuses!".split("").each { |c| print c ; sleep 0.08}
sleep 3
puts "\nGet ready to show the public what you stand for..."
sleep 3
puts "...and what you will fall for!"
sleep 2

system "clear"

puts "Press 'h' for help, and 'q' to quit. Press any other key to continue."

user_input = $stdin.gets.chomp.to_s
if user_input == "q"
  puts "You've died because you suck"
  exit
elsif  user_input =="h"
  puts "What would you like help with?"
  help
else
  puts "Who will you be campaigning as?"
  self.candidate_choice
end
      
