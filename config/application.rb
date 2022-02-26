require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application

    config.load_defaults 7.0
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :en
    config.serve_static_assets = true
  end
end
