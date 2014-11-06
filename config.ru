# This file is used by Rack-based servers to start the application.

require 'rack'
require 'rack/contrib'

use Rack::Locale

require ::File.expand_path('../config/environment',  __FILE__)
run SpreeStore::Application
