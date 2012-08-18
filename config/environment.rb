RAILS_GEM_VERSION = '3.0.5'
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do
       config.action_mailer.delivery_method = :test
end