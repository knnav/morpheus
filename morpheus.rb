class Morpheus
  def initialize(options)
    @options = options
  end

  def wake_up_everyone
    go_to_workspace
    options[:containers].each do |container|
      go_to(container)
      wake_up(container)
      go_to_workspace
    end
  end

  private

  attr_accessor :options

  def go_to_workspace
    system("cd #{options[:workspace]}")
  end

  def go_to(container)
    system("cd #{container}")
  end

  def wake_up (container)
    system("docker-compose up -d")
  end
end