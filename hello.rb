
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

if __FILE__ == $0

  hw = HelloWorld.new("Sir")
  hw.say_hello()

  ARGV.each do|arg|
    hw.say_hello_to(arg)
  end

end
