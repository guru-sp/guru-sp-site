source 'http://rubygems.org'

gem 'rails', '3.0.10'

gem 'sqlite3-ruby', :require => 'sqlite3'

gem "rails_admin", :git => 'git://github.com/sferik/rails_admin.git'
gem "inherited_resources", ">=1.1.2"
gem "will_paginate", ">=3.0.pre2"
gem "devise", ">=1.1.2"
gem "formtastic", ">=1.1.0"
gem "friendly_id", "~>3.0"
gem "compass", ">=0.10.5"
gem "lemonade", "0.3.4"
gem "inploy", ">=1.6.8"
gem "jquery-rails"
gem "picasa"

group :development do
  gem "autotest"
  gem "autotest-notification"
  gem "rails3-generators", :git => "git://github.com/indirect/rails3-generators.git"
  gem "metric_fu", ">=1.5.1"
end

group :development, :test do
  gem "factory_girl_rails"
  gem "rspec-rails", ">=2.0.1"
  gem 'web-app-theme', '>= 0.6.2'
  gem "steak", ">=1.1.0"
  gem "evergreen", :require => "evergreen/rails"
  platforms :mri_18 do
    gem "ruby-debug"
  end
  platforms :mri_19 do
    gem "ruby-debug19", :require => 'ruby-debug'
  end
end

group :test do
  gem "rspec", ">=2.0.1"
  gem "remarkable", ">=4.0.0.alpha4"
  gem "remarkable_activemodel", ">=4.0.0.alpha4"
  gem "remarkable_activerecord", ">=4.0.0.alpha4"
  gem "capybara", ">=0.3.6"
  gem "database_cleaner", ">=0.5.0"
end


group :production do
end

group :devise do
  gem 'ruby_parser'
  gem 'hpricot'
end
