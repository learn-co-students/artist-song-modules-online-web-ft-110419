require 'pry'

class Song
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  
  attr_accessor :name
  attr_reader :artist
  
  @@all = []
  
  def initialize
    super
  end
  
  def self.all
    return @@all
  end
  
  def artist=(artist)
    @artist = artist
  end
end
