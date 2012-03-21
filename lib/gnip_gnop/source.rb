module GnipGnop
  class Source
    include HappyMapper

    tag 'source'

    element :title, String
    element :updated, DateTime
    has_one :link, Link
  end
end
