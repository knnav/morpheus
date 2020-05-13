require_relative 'parser'
require_relative 'morpheus'

class Main
  def initialize
    @options = Parser.new.data
    Morpheus.new(@options).wake_up_everyone
  end
end

Main.new