module GnipGnop
  class ActivityActor
    include HappyMapper

    tag 'actor'

    namespace 'http://activitystrea.ms/spec/1.0/'

    element :object_type, String, :tag => 'object-type'
    has_many :links, Link
    element :id, String, :namespace => 'http://www.w3.org/2005/Atom'
  end
end
