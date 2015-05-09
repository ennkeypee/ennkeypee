##
# This file mounts each app in the Tennpipes project to a specified sub-uri.
# You can mount additional applications using any of these commands below:
#
#   Tennpipes.mount('blog').to('/blog')
#   Tennpipes.mount('blog', :app_class => 'BlogApp').to('/blog')
#   Tennpipes.mount('blog', :app_file =>  'path/to/blog/app.rb').to('/blog')
#
# You can also map apps to a specified host:
#
#   Tennpipes.mount('Admin').host('admin.example.org')
#   Tennpipes.mount('WebSite').host(/.*\.?example.org/)
#   Tennpipes.mount('Foo').to('/foo').host('bar.example.org')
#
# Note 1: Mounted apps (by default) should be placed into the project root at '/app_name'.
# Note 2: If you use the host matching remember to respect the order of the rules.
#
# By default, this file mounts the primary app which was generated with this project.
# However, the mounted app can be modified as needed:
#
#   Tennpipes.mount('AppName', :app_file => 'path/to/file', :app_class => 'BlogApp').to('/')
#

##
# Setup global project settings for your apps. These settings are inherited by every subapp. You can
# override these settings in the subapps as needed.
#
Tennpipes.configure_apps do
  # enable :sessions
  set :session_secret, '9611403dd3a6e7a7eacf5667fa330ebfe871164a52cc42c5a75d0c7f0a8ee8be'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

# Mounts the core application for this project

Tennpipes.mount('Ennkeypee::Pcofenn', :app_file => Tennpipes.root('pcofenn/app.rb')).to('/pcofenn')

Tennpipes.mount('Ennkeypee::Tennpipesframework', :app_file => Tennpipes.root('tennpipesframework/app.rb')).to('/tennpipesframework')

Tennpipes.mount('Ennkeypee::Academy', :app_file => Tennpipes.root('academy/app.rb')).to('/academy')

Tennpipes.mount('Ennkeypee::Laboratory', :app_file => Tennpipes.root('laboratory/app.rb')).to('/laboratory')
Tennpipes.mount('Ennkeypee::App', :app_file => Tennpipes.root('app/app.rb')).to('/')
