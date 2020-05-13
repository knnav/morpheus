class Morpheus
  def initialize(options)
    @options = options
  end

  def wake_up_everyone
    options[:containers].each do |container|
      go_to(container)
      wake_up(container)
    end
  end

  private

  attr_accessor :options

  def go_to_workspace
    %x["cd #{options[:workspace]}"]
  end

  def go_to(container)
    %x["cd #{options[:workspace]}/#{container}/"]
  end

  def wake_up (container)
    %x["docker-compose up -d"]
  end
end