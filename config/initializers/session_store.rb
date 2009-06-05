# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_goldhouse_session',
  :secret      => '0edeec684f3bad71a922a7272eec2e35fd9f4a7c6202ff6f9d96f2c81e2696cb3cdeb5d1319ccefb9044e001e790698fa76cfcab3530dff88e40166564a7f5c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
