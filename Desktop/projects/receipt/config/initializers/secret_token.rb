# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Receipt::Application.config.secret_key_base = 'a16e082f47eabb6d7821410d56f7b7acd8035c5b4374599e29238fb6cb40cb286f427ee4e9fee576a47132683434b727919e4e3397d702f98a6c1e3dd0902765'
