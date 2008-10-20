module RMeetup
  module Type
    
    # == RMeetup::Type::Member
    #
    # Data wraper for a Member fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this member.
    class Member
      attr_accessor :id, :name, :link, :bio, :lat, :lon, :country, :city, :state
      
      def initialize(member = {})
        self.id           = member['id'].to_i
        self.name         = member['name']
        self.link         = member['link']
        self.bio          = member['bio']
        self.lat          = member['lat'].to_f
        self.lon          = member['lon'].to_f
        self.country      = member['country']
        self.state        = member['state']
        self.city         = member['city']
      end
    end
  end
end