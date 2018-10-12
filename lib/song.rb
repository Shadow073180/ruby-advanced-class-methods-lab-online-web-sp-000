require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
  end

  def create_by_name(name)
    self.new_by_name(name)
  end



  # def self.alphabetical
  #   @@all = @@all.sort do |a, b|
  #     a.name <=> b.name
  #     if a.name == b.name
  #       0
  #     elsif a.name < b.name
  #       -1
  #     elsif a.name > b.name
  #       1
  #     end
  #   end
  #   return @@all
  # end
  #
  # def self.new_from_filename(mp3)
  #   name = mp3.split(" - ")
  #   artist_name = name[0]
  #   name = name[1].gsub(".mp3", "")
  #   song = Song.create_by_name(name)
  #   song.artist_name = artist_name
  #   return song
  # end
  #
  #
  # def self.destroy_all
  #   all.clear
  # end
  #
  # def self.create_from_filename(mp3)
  #   name = mp3.split(" - ")
  #   artist_name = name[0]
  #   name = name[1].gsub(".mp3", "")
  #   song = Song.new
  #   song.artist_name = artist_name
  #   return song
  # end




end
