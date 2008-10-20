module RMeetup
  module Fetcher
    class Topics < Base
      def initialize
        @type = :topics
      end
      
      # Turn the result hash into a Topic Class
      def format_result(result)
        RMeetup::Type::Topic.new(result)
      end
    end
  end
end