# Load the rails application
require File.expand_path('../application', __FILE__)

# Custom Mime types
# "Nolayout" for HTML without layout
Mime::Type.register_alias "text/html", :nolayout

# Initialize the rails application
Snoonet::Application.initialize!
