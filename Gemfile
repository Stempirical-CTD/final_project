source 'https://rubygems.org'

ruby '2.2.7'

gem 'aws-sdk', '~> 1.6'
gem 'devise'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'
gem 'paperclip'
gem 'rails-footnotes', '~> 4.0'
gem 'ratyrate'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'puma'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  # Call `binding.pry` anywhere in the code to stop execution and get a debugger
  # console
  gem 'pry'
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :development do
  gem 'bullet'
  gem 'rubocop'
  gem 'tota11y-rails', github: 'andycandrea/tota11y-rails'
end
