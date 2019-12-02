module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end #end of ClassMethods
#end #end of module

module InstanceMethods
   def initialize
     self.class.all << self
   end
 end
end #end of Memeorable
