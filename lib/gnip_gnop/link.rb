module GnipGnop
  class Link
    include HappyMapper

    tag 'link'

    attribute :rel, String
    attribute :type, String
    attribute :href, String
  end
end
