require 'spec_helper'
require 'rmeetup'

describe RMeetup::Client, 'trying to access the API before being configured' do
  it 'should throw an error trying to search' do
    lambda {
      RMeetup::Client.fetch(:topics)
    }.should raise_error(RMeetup::NotConfiguredError)
  end
end

describe RMeetup::Client, 'trying to fetch an unknown type' do
  before do
    RMeetup::Client.api_key = API_KEY
  end
  
  it 'should throw an error' do
    lambda {
      RMeetup::Client.fetch(:clowns)
    }.should raise_error(RMeetup::InvalidRequestTypeError)
  end
end

