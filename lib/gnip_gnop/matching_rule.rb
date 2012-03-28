module GnipGnop
  class MatchingRule
    include HappyMapper

    tag 'matching_rule'

    namespace 'http://www.gnip.com/schemas/2010'

    attribute :rel, String
    content :rule
  end
end
