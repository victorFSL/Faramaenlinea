source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0', '>= 5.0.2'
gem 'puma'
gem 'sass-rails', '~> 5.0', '>= 5.0.4'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'erb_to_slim'
gem 'slim-rails'
gem 'autoprefixer-rails', '~> 6.5', '>= 6.5.3'
gem 'mail_form'
gem 'simple_form'
gem 'therubyracer'
gem 'paperclip'
gem 'sprockets-rails', '~> 3.2'
gem 'oj'
gem 'searchkick'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'guard-livereload'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
