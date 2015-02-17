source 'http://rubygems.org'

gem "rails", "~> 3.2"

gem "sqlite3-ruby"
gem "libv8", "3.16.14.7"
gem "therubyracer"
gem "execjs"
gem "rails_admin"
gem "inherited_resources", ">=1.2.2"
gem "devise", ">=1.4.3"
gem "formtastic", "~>2.2.1"
gem "friendly_id", "~> 4.0.9"
gem "jquery-rails", "~> 2.1.4"
gem "sass"
gem "picasa", "~> 0.3.0"
gem "gravatar_image_tag"
gem "rich"
gem "mini_magick"
gem "carrierwave"

group :development do
  gem "thin"
  gem "guard"
  gem "guard-rspec"
  gem "guard-livereload"
  gem "rails3-generators", :git => "git://github.com/indirect/rails3-generators.git"
end

group :development, :test do
  gem "factory_girl_rails"
  gem "evergreen", :require => "evergreen/rails"
end

group :test do
  gem "rspec", "~>2.10"
  gem "rspec-rails", "~>2.10"
  gem "shoulda-matchers",  :git => "git://github.com/thoughtbot/shoulda-matchers.git"
  gem "capybara", "~>1.1.2"
  gem "capybara-webkit"
  gem "database_cleaner", "~>0.7"
  gem 'simplecov', '>= 0.4.2', :require => false
end

group :devise do
  gem "ruby_parser"
  gem "hpricot"
end

