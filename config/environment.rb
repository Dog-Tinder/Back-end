# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActiveStorage::DirectUploadsController.instance_eval { skip_forgery_protection }
