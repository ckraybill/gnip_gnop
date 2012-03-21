module GnipGnop
  class ActivityAuthor
    include HappyMapper

    tag 'author'

    def avatar_image
      avatar_link = links.detect { |l| l.rel == 'avatar' }
      avatar_link ? avatar_link.href : ''
    end

    namespace 'http://activitystrea.ms/spec/1.0/'

    element :object_type, String, :tag => 'object-type'
    has_many :links, Link
    element :id, String, :namespace => 'http://www.w3.org/2005/Atom'
  end
end
