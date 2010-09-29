# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_album_session',
  :secret      => 'c5e451c74c719c5a9b244ac38b6aa5d0860f90154885f6802312909ad72a07026d74cc835ae7d9601b762b5f120d28ce72b8dd0d87bdaa96cbfaa266f2b33a43'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
