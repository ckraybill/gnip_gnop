module GnipGnop
  class Entry
    include HappyMapper

    tag 'entry'

    namespace 'http://www.w3.org/2005/Atom'

    element :id, String
    element :published, DateTime
    element :updated, DateTime
    element :title, String
    element :summary, String, :attributes => { :type => String }
    has_many :categories, Category
    has_one :link, Link
    has_one :source, Source
    has_one :service_provider, ServiceProvider
    element :activity_verb, String, :tag => 'verb', :namespace => 'http://activitystrea.ms/spec/1.0/'
    has_one :activity_object, ActivityObject
    has_one :author, Author
    has_one :activity_author, ActivityAuthor
    has_one :activity_actor, ActivityActor
    has_one :matching_rule, MatchingRule
  end
end
