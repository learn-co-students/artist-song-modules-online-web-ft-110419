require 'pry'

class Artist
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize
    super
    @songs = []
  end
  
  def self.all
    return @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
