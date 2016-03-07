module Combat
  def <(enemy)
    result = (self <=> enemy)
    -1 == result
  end

  def > (enemy)
    result = (self <=> enemy)
    1 == result
  end

  def = (enemy)
    result = (self <=> enemy)
    0 == result
  end

end

class Actor

  include Comparable

  attr_reader :health
  def initialize(health)
    @health = health
  end

  def <=>(actor)
    self.health <=> actor.health
  end

class Npc < Actor
    def who(num)
      case adversary
      when 1
        Donald = Npc.new
      when 2
        Marco = Npc.new
      when 3
        Hillary = Npc.new
      when 4
        Ted = Npc.new
      else
        random = Npc.new
      end
    end
  end

class Player < Actor
    @name = name
    @type = type
  

  end
end

