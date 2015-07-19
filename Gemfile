ruby '1.9.3'

source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development do
  gem 'sqlite3'

  gem 'guard-livereload'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

gem 'pry'
gem 'pry-rails'
gem 'pry-doc'

gem 'rack-throttle', '0.3.0', git: 'git://github.com/karmi/rack-throttle.git', ref: '02297be43714cb990dfe8a582eb5ec90c2861d49'

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  gem 'jquery-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'
end

gem 'compass'
gem 'compass-rails'

gem 'turbolinks'

gem 'haml'
gem 'liquid'
gem 'redcarpet'

gem 'pygments.rb'

gem 'kaminari'

gem 'activeadmin', '~> 0.6.1'

# A non shitty rack server
gem 'puma'

# Use Capistrano for deployment
group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rbenv',   require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

# Sidebar tree
gem 'ancestry'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# To use debugger
# gem 'debugger'
