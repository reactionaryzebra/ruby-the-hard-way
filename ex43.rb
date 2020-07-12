class Scene

  def initialize(name, left, right)
    @name = name
    @left = left
    @right = right
  end

  attr_reader :left
  attr_reader :right
  attr_reader :name

  def enter()
    puts "This is a generic scene.  There is nothing to see here.  You've gone down a blind alley"
    exit(1)
  end
end

class Engine


  def initialize(map)
    @map = map
    @direction_to_method = {
      'left' => 'go_left',
      'right' => 'go_right'
    }
  end

  def play()
    current_scene = @map.opening_scene()
    final_scene = @map.final_scene()
    while current_scene.name != final_scene.name
      chosen_direction = current_scene.enter()
      current_scene = @map.send(@direction_to_method[chosen_direction])
    end
    current_scene.enter()
  end
end

class Death

  def enter()
  end
end

class CentralCorridor < Scene

  def initialize()
    super('central-corridor', 'laser-weapon-array', 'the-bridge')
  end

  def enter()
    correct_input_flag = false
      puts "You are in the corridor. now where?"
      while !correct_input_flag
        choice = $stdin.gets.chomp
        if choice == 'left' || choice == 'right'
          correct_input_flag = true
        else
          puts "that is not an option.  left or right"
        end
      end
      return choice
  end
end

class LaserWeaponArray < Scene

  def initialize()
    super('laser-weapon-array', 'the-bridge', 'central-corridor')
  end

  def enter()
    correct_input_flag = false
      puts "You are in the weapons room. now where?"
      while !correct_input_flag
        choice = $stdin.gets.chomp
        if choice == 'left' || choice == 'right'
          correct_input_flag = true
        else
          puts "that is not an option.  left or right"
        end
      end
      return choice
  end
end

class TheBridge < Scene

  def initialize()
    super('the-bridge', 'laser-weapon-array', 'escape-pod')
  end

  def enter()
    correct_input_flag = false
      puts "You are in the bridge. now where?"
      while !correct_input_flag
        choice = $stdin.gets.chomp
        if choice == 'left' || choice == 'right'
          correct_input_flag = true
        else
          puts "that is not an option.  left or right"
        end
      end
      return choice
  end
end

class EscapePod < Scene

  def initialize()
    super('escape-pod', 'the-bridge', 'central-corridor')
  end

  def enter()
    puts "Congratulations you made it!"
    exit(0)
  end
end

class Map

  @@scenes = {
    'central-corridor' => CentralCorridor.new(),
    'laser-weapon-array' => LaserWeaponArray.new(),
    'the-bridge' => TheBridge.new(),
    'escape-pod' => EscapePod.new(),
    'death' => Death.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
    @current_scene = @@scenes[start_scene]
    @final_scene = 'escape-pod'
  end

  def go_left()
    @current_scene = @@scenes[@current_scene.left]
    return @current_scene
  end

  def go_right()
    @current_scene = @@scenes[@current_scene.right]
    return @current_scene
  end

  def opening_scene()
    @current_scene = @@scenes[@start_scene]
    return @current_scene
  end

  def final_scene()
    @current_scene = @@scenes[@final_scene]
    return @current_scene
  end

end

map = Map.new('central-corridor')

game = Engine.new(map)
game.play()
