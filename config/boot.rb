# Defines our constants
RACK_ENV = ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)
TENNPIPES_ROOT = File.expand_path('../..', __FILE__) unless defined?(TENNPIPES_ROOT)

# Load our dependencies
require 'bundler/setup'
Bundler.require(:default, RACK_ENV)

##
# ## Enable devel logging
#
# Tennpipes::Logger::Config[:development][:log_level]  = :devel
# Tennpipes::Logger::Config[:development][:log_static] = true
#
# ## Enable logging of source location
#
# Tennpipes::Logger::Config[:development][:source_location] = true
#
# ## Configure your I18n
#
# I18n.default_locale = :en
# I18n.enforce_available_locales = false
#
# ## Configure your HTML5 data helpers
#
# Tennpipes::Helpers::TagHelpers::DATA_ATTRIBUTES.push(:dialog)
# text_field :foo, :dialog => true
# Generates: <input type="text" data-dialog="true" name="foo" />
#
# ## Add helpers to mailer
#
# Mail::Message.class_eval do
#   include Tennpipes::Helpers::NumberHelpers
#   include Tennpipes::Helpers::TranslationHelpers
# end

##
# Add your before (RE)load hooks here
#
Tennpipes.before_load do
end

##
# Add your after (RE)load hooks here
#
Tennpipes.after_load do
end

Tennpipes.load!
