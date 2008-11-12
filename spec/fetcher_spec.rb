require 'spec_helper'

describe RMeetup::Fetcher, 'being told to get a certain type of fetcher' do
  before do
    @fetcher_types = %w(topics cities members rsvps events groups comments photos)
  end
  
  it 'should return the correct fetcher' do
    @fetcher_types.each do |type|
      fetcher = RMeetup::Fetcher.for(type)
      fetcher.class.name.should eql("RMeetup::Fetcher::#{type.capitalize}")
    end
  end
  
  it 'should return nil if asked for an invalid fetcher' do
    RMeetup::Fetcher.for(:clowns).should be_nil
  end
end