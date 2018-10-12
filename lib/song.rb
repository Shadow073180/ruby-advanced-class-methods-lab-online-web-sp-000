require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
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
    hello = Song.new("Hello")
    return hello
  end

  def self.new_by_name(name)
    song = Song.new(name)
  end

  def self.create_by_name(name)
    song = Song.new(name)
  end

  def self.find_by_name(name)
    @@all.find {|x| x.name == name}
  end

  def self.find_or_create_by_name(name)
    song = Song.new(name)
    @@all.find {|x| x.name == name}
  end

  def self.alphabetical
    @@all = @@all.sort do |a, b|
      a.name <=> b.name
      if a.name == b.name
        0
      elsif a.name < b.name
        -1
      elsif a.name > b.name
        1
      end
    end
    return @@all
  end

  def self.new_from_filename(mp3)
    binding.pry
    song = Song.new(mp3)
    song.name = song.name.split(" ")
    song.name[-1].gsub(".mp3", "")                  #=> "h*ll*"
    song.name = song.name.slice[2..5]
    return song
  end


  def self.destroy_all
    all.clear
  end








end
