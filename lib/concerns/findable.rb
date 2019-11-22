module Findable
  def find_by_name(name, array)
    array.detect{|a| a.name == name}
  end
end