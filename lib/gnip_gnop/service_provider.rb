module GnipGnop
  class ServiceProvider
    include HappyMapper

    tag 'provider'

    namespace 'http://activitystrea.ms/service-provider'

    element :name, String, :namespace => 'http://www.w3.org/2005/Atom'
    element :uri, String, :namespace => 'http://www.w3.org/2005/Atom'
    element :icon, String, :namespace => 'http://www.w3.org/2005/Atom'
  end
end
