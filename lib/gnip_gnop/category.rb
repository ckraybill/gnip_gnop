module GnipGnop
  class Category
    include HappyMapper

    tag 'category'

    attribute :term, String
    attribute :label, String
  end
end
