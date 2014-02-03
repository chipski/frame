source 'https://rubygems.org'
ruby "1.9.3"

gem "i18n"
#gem 'psych', ">=1.3"
gem "multi_json"
gem 'bundler', ">1.2"
gem 'rack'  #, '~> 1.2.1'
#gem 'rack-rewrite', '~> 1.2.1'
gem "rake"
gem "thor"
#gem 'eventmachine', '~> 1.0.0.beta.4.1'
gem "thin"     

gem 'rails', '3.2.14'
gem "pg"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'libv8', '~> 3.11.8.3'
  gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'   
  #gem 'quiet_assets', :group => :development
end
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'gibbon'
gem 'haml-rails'
gem 'rolify'
gem 'simple_form'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
end
