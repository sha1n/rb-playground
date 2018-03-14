require "json"

if __FILE__ == $0

  # array
  puts "Args in JSON array representation: #{ARGV.to_json}"

  # map
  i = 1
  map = {}
  ARGV.each do|arg|
    map["key_#{i}"] = arg
    i += 1
  end

  args_map_json = map.to_json
  puts "Args in JSON object representation: #{args_map_json}"

  args = []
  parsedArgsMap = JSON.parse(args_map_json)
  parsedArgsMap.keys.each do|key|
    args.push(parsedArgsMap[key])
  end

  puts "Reconstructed args JSON array: #{args.to_json}"

end
