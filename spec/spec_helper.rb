$: << File.join('..', 'lib')

# Meetup API Key
#
# Please provide your meetup api key to access
# the API. Some of the spec require access to the API.
# You can get your API key by loging in to meetup.com
# and looking in your account info.
API_KEY = nil

# Don't let the specs run without an API key
raise StandardError, 'Please enter your Meetup API key in the spec_helper.rb file to be used for testing purposes.' unless API_KEY