module RMeetup
  module Fetcher
    class Groups < Base
      def initialize
        @type = :groups
      end
      
      # Turn the result hash into a Group Class
      def format_result(result)
        RMeetup::Type::Group.new(result)
      end
    end
  end
end