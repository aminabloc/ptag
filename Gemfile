source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.6.3"


gem "autoprefixer-rails"

# text messages
gem 'twilio-ruby', '~> 5.25.4'

gem "honeybadger"
gem "pg" , "~> 1.1.3"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 5.2.3"
gem "recipient_interceptor"
gem "sassc-rails"
gem "skylight"
gem "sprockets", ">= 3.0.0"
gem "title"
gem "tzinfo-data", platforms: [:mingw, :x64_mingw, :mswin, :jruby]
gem "uglifier"
gem "bootsnap", require: false
gem "devise"
gem 'rqrcode'
gem 'ansi-to-html'

gem 'figaro'

#uploads
gem 'carrierwave'

gem 'best_in_place', '~> 3.0.1'


#omniauth
gem 'omniauth-facebook'
gem 'omniauth-instagram'

group :development do
  gem "listen"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
end

group :test do
  gem "formulaic"
  gem "launchy"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

gem "suspenders", group: [:development, :test]
