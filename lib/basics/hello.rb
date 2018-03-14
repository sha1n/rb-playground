
class HelloWorld
  attr_accessor :name

  def initialize(name = "Who?")
      @name = name
  end

  def say_hello
    say_hello_to(@name)
  end

  def say_hello_to(name)
    if name.nil?
      puts "...I can't take that..."
    elsif name.respond_to?("each")
      puts "Hello everyone..."
    else
      puts "Hello #{name}!"
    end
  end
end
