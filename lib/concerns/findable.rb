module Findable
  def find_by_name(name) 
    all.find{|item| item.name == name}
  end 
end 

class Artist 
  extend Findable 
end 

class Song 
  extend Findable 
end 