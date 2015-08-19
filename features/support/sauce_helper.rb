# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"
require "sauce/cucumber"

Capybara.default_driver = :sauce
Capybara.javascript_driver = :sauce

# Set up configuration
Sauce.config do |config|
  config[:start_local_application] = false
  config[:browsers] = [
    #["Windows 8", "Chrome", "44"],
    #["Windows 8", "Firefox", "35"],
    ["OS X 10.10", "Firefox", "35"]
  ]
  config[:start_tunnel] = true
  config[:warn_on_skipped_integration] = false
end
