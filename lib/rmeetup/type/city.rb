module RMeetup
  module Type
    
    # == RMeetup::Type::City
    #
    # Data wraper for a City fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this city.
    class City
      attr_accessor :city, :lat, :lon, :country, :state, :zip, :members
      
      def initialize(city = {})
        self.city         = city['city']
        self.lat          = city['lat'].to_f
        self.lon          = city['lon'].to_f
        self.country      = city['country']
        self.state        = city['state']
        self.zip          = city['zip']
        self.members      = city['members'].to_i
      end
    end
  end
end