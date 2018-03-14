require "erb"

template = "Hello <%= name %>!"

if ARGV.empty?
  puts "Be nice and provide your name.. PLEASE!"
else
  name = ARGV.join(" ")
  renderer = ERB.new(template)
  puts renderer.result()
end
