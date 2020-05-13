require 'optparse'

class Parser
  def initialize
    parse_workspace
  end

  def data
    {
      workspace: workspace,
      containers: containers
    }
  end

  private

  attr_accessor :workspace

  def parse_workspace
    OptionParser.new do |option|
      option.on('-w', '--workspace WORKSPACE', 'Base workspace where your containers are') { |w| @workspace ||= w  }
    end.parse!
  end

  def containers
    @containers ||= ARGV
  end
end
