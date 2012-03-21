module GnipGnop
  class ActivityObject
    include HappyMapper

    tag 'object'

    namespace 'http://activitystrea.ms/spec/1.0/'

    element :object_type, String, :tag => 'object-type'
    element :id, String, :namespace => 'http://www.w3.org/2005/Atom'
    element :content, String, :attributes => { :type => String }, :namespace => 'http://www.w3.org/2005/Atom'
    has_one :link, Link
  end
end
