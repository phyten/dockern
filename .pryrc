# Default Command Set, add custom methods here:
default_command_set = Pry::CommandSet.new do
  command "reload!" do
    load "./lib/base.rb"
  end
end

Pry.config.commands.import default_command_set
Pry.config.should_load_plugins = false
