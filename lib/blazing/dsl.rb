require 'blazing/target'

module Blazing
  class DSL

    attr_accessor :config

    def initialize(config)
      @config = config
    end

    def target(name, location, options = {})
      raise "Name already taken" if config.targets.find { |t| t.name == name }
      config.targets << Blazing::Target.new(name, location, self, options)
    end

    def rake(task_name)
      config.rake_task = task_name
    end

    def env_script(path)
      config.env_script = path
    end

    def rvm_scripts(args)
      warn "rvm_scripts in config has been deprecated and no longer works. Use env_script!"
    end

    def rvm(args)
      warn "you can not set the rvm ruby with the blazing DSL anymore. Use rake tasks!"
    end

    def recipes(args)
      warn "recipes have been removed from blazing!"
    end
  end
end
