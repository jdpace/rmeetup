require "rmeetup/fetcher/base"
require "rmeetup/fetcher/topics"
require "rmeetup/fetcher/cities"
require "rmeetup/fetcher/members"
require "rmeetup/fetcher/rsvps"
require "rmeetup/fetcher/events"
require "rmeetup/fetcher/groups"
require "rmeetup/fetcher/comments"
require "rmeetup/fetcher/photos"

module RMeetup
  module Fetcher
    
    class << self
      # Return a fetcher for given type
      def for(type)
        return  case type.to_sym
                when :topics
                  Topics.new
                when :cities      
                  Cities.new
                when :members     
                  Members.new
                when :rsvps       
                  Rsvps.new
                when :events      
                  Events.new
                when :groups      
                  Groups.new
                when :comments    
                  Comments.new
                when :photos
                  Photos.new
                end
      end 
    end
  end
end