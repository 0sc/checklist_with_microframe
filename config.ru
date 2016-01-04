APP_PATH = __dir__

require  "bundler"
Bundler.require

ChecklistApplication = Microframe::Application.new

require File.join(APP_PATH, "config", "routes")

use Rack::Static, :urls => ["/stylesheets", "/images", "/javascripts", "/font"], :root => File.join(APP_PATH, "app", "assets")
use Rack::MethodOverride
use Rack::Reloader
run ChecklistApplication
