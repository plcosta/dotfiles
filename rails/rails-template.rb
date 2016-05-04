source 'https://rubygems.org'

ruby '2.2.3'

gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'rails-i18n'
gem 'simple_form'

group :development do
  gem 'web-console'
  gem 'spring'
  gem 'rack-mini-profiler'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'awesome_print'
  gem 'spring-commands-rspec'
  gem 'thin'
  gem 'dotenv-rails'
  gem 'letter_opener'
  gem 'pry-rails'
end

group :test do
  gem 'simplecov'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'passenger', '~> 5.0'
end

after_bundle do
  git :init
  git add: '.'
  git commit: %Q{ -m 'Init.' }
end
