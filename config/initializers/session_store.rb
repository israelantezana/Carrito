# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_carrito_session',
  :secret      => 'fa85b806dedbd32a7d9e2c0398b609b8ccad5231c8cbd42b415b09e244b8f166496ee1985a3c3d0597d7f00001fbba1097a6449dc925dd5ae541420c6dd1bb60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
