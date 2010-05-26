# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RedditArtsFoundation_session',
  :secret      => 'd13ddf6d482043655b00b412b557920dd98ea892e1bf1c5387f97186bd9ccf723dbe981dc502f30f54ee6fd2d8d29c94477797b4fcc6330074cfd5159adcecc0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
