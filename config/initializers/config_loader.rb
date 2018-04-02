require 'yaml'
require 'ostruct'

module Walden
	mattr_reader :config

	def self.configure
    @@config = OpenStruct.new
	end	
	
	def load_configs
		Dir[config_dir].each do |filename|
			yaml_data = YAML.load(File.read(filename))
			domain = yaml_data.keys.first
			params = yaml_data[domain][Rails.env]
			handle_params(domain, params)
		end
	end

	def handle_params(domain, params)
    value_collection = OpenStruct.new
		(params || {}).each do |k, v|
      value_collection[k] = v
		end
		config[domain] = value_collection
	end	

  def config_dir
		Rails.root.join('config', 'walden', '*.yml')
	end
end
