# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# SB-ADMIN 2 ASSETS
Rails.application.config.assets.precompile += %w( sb-admin-2.js sb-admin-2.css )

# Admins Assets
Rails.application.config.assets.precompile += %w( admins_backoffice.js admins_backoffice.css )

# Modelos Assets
Rails.application.config.assets.precompile += %w( models_backoffice.js models_backoffice.css )
