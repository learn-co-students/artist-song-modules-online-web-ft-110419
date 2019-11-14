module Memorable
  module Class_methods
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end
  module Instance_methods 
    def initialize 
      self.class.all << self 
    end 
  end
end 


class Artist 
  extend Memorable::Class_methods
  include Memorable::Instance_methods 
end

class Song 
  extend Memorable::Class_methods
  include Memorable::Instance_methods 
end