module Paramable
  def to_param
    return name.downcase.gsub(' ', '-')
  end
end
