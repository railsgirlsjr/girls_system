require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GirlsSystem
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.i18n.default_locale = :en
    config.i18n.available_locales = %i[zh-CN zh en]
    config.i18n.enforce_available_locales = true

    config.generators do |g|
      # g.test_framework  :rspec, view_specs: false, helper_specs: false
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
    end
  end
end
