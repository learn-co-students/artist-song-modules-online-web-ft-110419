module Findable
  def find_by_name(name)
    all.each { |object| return object if object.name == name }
  end
end
