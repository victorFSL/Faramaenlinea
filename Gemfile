source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0', '>= 5.0.2'
gem 'puma', '~> 3.8', '>= 3.8.2'
gem 'sass-rails', '~> 5.0', '>= 5.0.4'
gem 'uglifier', '~> 3.2'
gem 'coffee-rails', '~> 4.2', '>= 4.2.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'turbolinks', '~> 5.0', '>= 5.0.1'
gem 'jbuilder', '~> 2.6', '>= 2.6.4'
gem 'erb_to_slim', '~> 0.0.8'
gem 'slim-rails', '~> 3.1', '>= 3.1.2'
gem 'autoprefixer-rails', '~> 7.0', '>= 7.0.1'
gem 'mail_form', '~> 1.6'
gem 'simple_form', '~> 3.4'
gem 'therubyracer', '~> 0.12.3'
gem 'paperclip', '~> 5.1'
gem 'sprockets-rails', '~> 3.2'
gem 'oj', '~> 3.0', '>= 3.0.6'
gem 'searchkick', '~> 2.3'
gem 'bonsai-elasticsearch-rails', '~> 0.2.0'
gem 'semantic-ui-sass', '~> 2.2', '>= 2.2.10.1'

group :development, :test do
  gem 'byebug', '~> 9.0', '>= 9.0.6', platform: :mri
end

group :development do
  gem 'web-console', '~> 3.5'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'spring', '~> 2.0', '>= 2.0.1'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
  gem 'sqlite3', '~> 1.3', '>= 1.3.13'
  gem 'rack-mini-profiler', '~> 0.10.2'
end

group :production do
  gem 'pg', '~> 0.20.0'
end

gem 'tzinfo-data', '~> 1.2017', '>= 1.2017.2', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
