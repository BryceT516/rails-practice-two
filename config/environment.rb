# Load the Rails application.
require_relative 'application'

# Loads the lib directory
Dir[Rails.root.join('lib/**/*.rb')].each { |f| require f }

# Initialize the Rails application.
Rails.application.initialize!
