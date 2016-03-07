def candidate_choice
  puts "1. Donald Trump\n2. Ben Carson\n3. Marco Rubio\n4. Hillary Clinton\n5. Chris Christie"
  character = gets.chomp
  case character
  when "1"
    donald
  when "2"
    ben
  when "3"
    marco
  when "4"
    hillary
  when "5"
    chris
  else
    "Please enter a valid choice."
  end
end

#unsure if you can call a method from within a case. I can't get it to work or find documentation on it.
#
def donald
  puts "You selected: The Donald! He's Yuuuuuuuuuge."
  puts "The Donald starts out with:\n100/100 moneys\n60/100 health\n85/100 charisma"  end

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
  # puts "You've died because you suck"
elsif user_input == "h"
  # puts "Welcome to the help screen."
else
  # puts "Who will you be campaigning as?"
  # candidate_choice
end


