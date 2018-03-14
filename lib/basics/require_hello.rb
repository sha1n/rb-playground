require_relative "hello"

if __FILE__ == $0

  hw = HelloWorld.new("Sir")
  hw.say_hello()

  ARGV.each do|arg|
    hw.say_hello_to(arg)
  end

end
