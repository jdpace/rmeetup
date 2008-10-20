module RMeetup
  module Fetcher
    class Cities < Base
      def initialize
        @type = :cities
      end
      
      # Turn the result hash into a City Class
      def format_result(result)
        RMeetup::Type::City.new(result)
      end
    end
  end
end