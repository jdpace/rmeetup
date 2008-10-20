module RMeetup
  module Type
    
    # == RMeetup::Type::Photo
    #
    # Data wraper for a Photo fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this photo.
    class Photo
      attr_accessor :albumtitle, :link, :member_url, :descr, :created
      
      def initialize(photo = {})
        self.albumtitle   = photo['albumtitle']
        self.link         = photo['link']
        self.member_url   = photo['member_url']
        self.descr        = photo['descr']
        self.created      = DateTime.parse(photo['created'])
      end
    end
  end
end