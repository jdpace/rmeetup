module RMeetup
  module Type
    
    # == RMeetup::Type::Rsvp
    #
    # Data wraper for a Rsvp fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this rsvp.
    class Rsvp
      attr_accessor :name, :link, :comment, :lat, :lon, :country, :city, :state
      
      def initialize(rsvp = {})
        self.name         = rsvp['name']
        self.link         = rsvp['link']
        self.comment      = rsvp['comment']
        self.lat          = rsvp['lat'].to_f
        self.lon          = rsvp['lon'].to_f
        self.country      = rsvp['country']
        self.state        = rsvp['state']
        self.city         = rsvp['city']
      end
    end
  end
end