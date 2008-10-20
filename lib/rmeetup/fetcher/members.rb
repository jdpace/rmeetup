module RMeetup
  module Fetcher
    class Members < Base
      def initialize
        @type = :members
      end
      
      # Turn the result hash into a Member Class
      def format_result(result)
        RMeetup::Type::Member.new(result)
      end
    end
  end
end