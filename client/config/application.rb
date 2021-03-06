require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Client
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.paths.add Rails.root.join('app', 'gen', 'api', 'pancake', 'baker').to_s, eager_load: true
    config.paths.add Rails.root.join('app', 'gen', 'api', 'image', 'upload').to_s, eager_load: true
    config.load_defaults 5.2
    config.autoloader = :classic

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
