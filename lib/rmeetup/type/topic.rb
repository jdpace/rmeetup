module RMeetup
  module Type
    
    # == RMeetup::Type::Topic
    #
    # Data wraper for a Topic fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this topic.
    class Topic
      attr_accessor :name, :urlkey, :id, :description, :members, :link, :updated
      
      def initialize(topic = {})
        self.name         = topic['name']
        self.urlkey       = topic['urlkey']
        self.id           = topic['id'].to_i
        self.description  = topic['description']
        self.members      = topic['members'].to_i
        self.link         = topic['link']
        self.updated      = DateTime.parse(topic['updated'])
      end
    end
  end
end