require 'pry'
require './lib/concerns/memorable.rb'
require './lib/concerns/findable.rb'
require './lib/concerns/paramable.rb'

@@all = []

class Artist
  attr_accessor :name
  attr_reader :songs
    extend Memorable::ClassMethods
    extend Findable::ClassMethods
    include Paramable::InstanceMethods

  def self.all
    @@all
  end

  def initialize
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
