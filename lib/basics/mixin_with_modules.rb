require_relative "modules.rb"

class Chord
    include Chords
end

if __FILE__ == $0
  verse  = []
  verse.push(Chord.new("G"))
  verse.push(Chord.new("A", "m"))
  verse.push(Chord.new("C"))
  verse.push(Chord.new("E", "m"))

  puts verse
  .map { |c| c.notation }
  .join(" | ")
end
