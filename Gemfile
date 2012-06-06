source 'http://rubygems.org'

gem "rails", "=3.2.5"

gem "sqlite3-ruby"
gem "therubyracer"
gem "execjs"
gem "rails_admin"
gem "inherited_resources", ">=1.2.2"
gem "devise", ">=1.4.3"
gem "formtastic", ">=2.0.0.rc4"
gem "friendly_id", ">=3.2.1"
gem "jquery-rails"
gem "sass"
gem "picasa"
gem "twitter"

group :development do
  gem "thin"
  gem "autotest"
  gem "autotest-notification"
  gem "rails3-generators", :git => "git://github.com/indirect/rails3-generators.git"
end

group :development, :test do
  gem "factory_girl_rails"
  gem "web-app-theme", ">=0.7.0"
  gem "steak", ">=2.0.0"
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


group :production do
end

group :devise do
  gem "ruby_parser"
  gem "hpricot"
end

