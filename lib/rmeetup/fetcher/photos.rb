module RMeetup
  module Fetcher
    class Photos < Base
      def initialize
        @type = :photos
      end
      
      # Turn the result hash into a Photo Class
      def format_result(result)
        RMeetup::Type::Photo.new(result)
      end
    end
  end
end