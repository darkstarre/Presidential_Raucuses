module Choices

  def candidate_choice()
    puts "1. Donald Trump\n2. Ben Carson\n3. Marco Rubio\n4. Hillary Clinton\n5. Chris Christie"
    character = gets.chomp
    case character
    when "1"
      Donald.new
    end
  end
end

class Engine
  def initialize(choice)
    @choice = choice
  end

  def play()
    current_choice = @choice.opening_scene()
    last_choice = @choice.next_choice('finished')

    while current_choice != last_choice
      next_choice_name = current_choice.enter()
      current_choice = @choice.next_choice(next_choice_name)
    end
    current_choice.enter()
  end
end

