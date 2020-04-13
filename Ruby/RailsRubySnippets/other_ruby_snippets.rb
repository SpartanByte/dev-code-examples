## OTHER RUBY ON RAILS SNIPPETS

## For adding in custom fonts to assets.rb
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")

## For adding in call to the secret key in application.rb
## this error may happen the first time an app is deployed to heroku
## in Class Application < Rails::Application..
config.secret_key_base = ENV["SECRET_KEY_BASE"]
## then set the key in command line using heroku config:set