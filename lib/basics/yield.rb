
def block_invoker
  puts "About to do whatever I was told to.. stay tuned!"
  yield
end

def block_invoker_with_params(name)
  puts "Going to do whatever I was told to with parameter #{name}.."
  yield name
end

if __FILE__ == $0
  block_invoker {
    puts "\t*******************"
    puts "\t*** MooHahahaha ***"
    puts "\t*******************"
  }

  puts "Done!"
  puts
  puts "..and now..."
  puts

  block_invoker_with_params("Jonny") {
    |name|

    puts "\t*******************"
    puts "\t*** Hello #{name} ***"
    puts "\t*******************"
  }

    puts "Done!"
end
