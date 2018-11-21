class Person
  # attr_accessor :fav_color

  def initialize(name)
    @name = name
    @fav_color = nil
  end

  def introduction
    print "Hello, my name is #{@name} and "
    if @fav_color
      puts "my favourite color is #{@fav_color}"
    else
      puts "I don't have a favourite color"
    end
  end

  # def fav_color=(new_fav_color)
  #   @fav_color = new_fav_color
  # end

  # def fav_color
  #   return @fav_color
  # end
end

alice = Person.new("Alice")
bob = Person.new("Bob")

alice.fav_color = "Red"

alice.introduction
bob.introduction
