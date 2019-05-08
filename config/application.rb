require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EmsApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.generators do |g|
      g.helper = false
      g.javascripts = false
      g.javascript_engine = :js
      g.stylesheets = false
      g.stylesheet_engine = :css
      # Set this equal to nil so the generator doesn't ever create views.
      # Create your own .haml views
      g.template_engine = nil
      g.test_framework :test_unit, :fixture => false
    end
  end
end
