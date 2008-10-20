module RMeetup
  module Type
    
    # == RMeetup::Type::Comment
    #
    # Data wraper for a Comment fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this comment.
    class Comment
      attr_accessor :name, :link, :comment, :rating, :descr, :created, :lat, :lon, :country, :city, :state
      
      def initialize(comment = {})
        self.name         = comment['name']
        self.link         = comment['link']
        self.comment      = comment['comment']
        self.rating       = comment['rating'].to_i
        self.descr        = comment['descr']
        self.created      = DateTime.parse(comment['created'])
        self.lat          = comment['lat'].to_f
        self.lon          = comment['lon'].to_f
        self.country      = comment['country']
        self.state        = comment['state']
        self.city         = comment['city']
      end
    end
  end
end