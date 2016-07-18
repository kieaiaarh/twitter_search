source 'https://rubygems.org'

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem "haml-rails", "~> 0.9"

# elasticsearch
gem 'elasticsearch-persistence', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
gem 'elasticsearch-rails', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
gem 'elasticsearch-model', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
gem 'elasticsearch-extensions', git: 'git://github.com/elasticsearch/elasticsearch-ruby.git'
gem 'elasticsearch-dsl', git: 'git://github.com/elasticsearch/elasticsearch-ruby.git'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_rewinder'
  gem 'pry-byebug'
  gem 'pry-doc', require: false
  gem 'pry-rails'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'rubocop', '0.35.1', require: false
  gem 'haml_lint', require: false
end

group :test do
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'poltergeist'
  gem 'launchy'
  gem 'active_decorator-rspec', require: false
  gem 'rspec_junit_formatter'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
