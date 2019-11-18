require_relative '../lib/concerns/memorable'

module Memorable
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  class self
    extend Memorable
  end
end
