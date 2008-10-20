module RMeetup
  module Type
    
    # == RMeetup::Type::Group
    #
    # Data wraper for a Group fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this group.
    class Group
      attr_accessor :id, :name, :link, :updated, :members, :created, :photo_url, :description,
                    :lat, :lon, :country, :state, :city, :zip, :organizerProfileUrl, :daysleft
      
      def initialize(group = {})
        self.id           = group['id'].to_i
        self.name         = group['name']
        self.link         = group['link']
        self.updated      = DateTime.parse(group['updated'])
        self.members      = group['members'].to_i
        self.created      = DateTime.parse(group['created'])
        self.photo_url    = group['photo_url']
        self.description  = group['description']
        self.lat          = group['lat'].to_f
        self.lon          = group['lon'].to_f
        self.country      = group['country']
        self.state        = group['state']
        self.city         = group['city']
        self.zip          = group['zip']
        self.daysleft     = group['daysleft'].to_i
      end
    end
  end
end