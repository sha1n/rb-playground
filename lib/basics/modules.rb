
module Chords
  attr :suffix
  attr :root

  def initialize(root, suffix = nil)
    @root = root
    @suffix =
      if suffix.nil?
        ""
      else
        suffix
      end
  end

  def notation
    return "#{@root.capitalize}#{@suffix}"
  end
end
