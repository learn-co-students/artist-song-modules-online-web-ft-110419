module Memorable
  module ClassMethods 
  
  def rest_all
    self.all.clear
  end 
  
  def count
    self.all.count
  end 
end 
end 