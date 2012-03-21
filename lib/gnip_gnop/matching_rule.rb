module GnipGnop
  class MatchingRule
    include HappyMapper

    tag 'matching_rules'

    namespace 'http://www.gnip.com/schemas/2010'

    element :rule, String, :tag => 'matching_rule'
  end
end
