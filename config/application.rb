require_relative 'boot'

require 'rails/all'

# load the lib/walden.rb first
require_relative '../lib/walden'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Walden
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    config.autoload_paths += [
      "#{config.root}/lib"
    ]

    # load all config
    Walden.configure
  end
end
