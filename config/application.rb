require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
require 'elasticsearch/rails/instrumentation'

module TwitterSearch
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.active_record.raise_in_transactional_callbacks = true
    config.active_record.schema_format = :sql
    config.active_record.default_timezone = :local
    config.action_view.field_error_proc = Proc.new { |html_tag, _instance| %Q(#{html_tag}).html_safe }
    config.autoload_paths += %W(#{config.root}/app/batch/)
    config.action_dispatch.rescue_responses.update('HTTP::Errors::NotFound' => :not_found)
    config.autoload_paths += %W(#{config.root}/app/batches)
  end
end
