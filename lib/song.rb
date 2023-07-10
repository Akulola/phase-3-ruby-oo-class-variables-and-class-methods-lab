require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end

    def self.count
        @@count
    end
    
    def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
        unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end
  
  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each {|genre| genre_hash[genre] +=1}
    genre_hash
  end
  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each {|artist| artist_hash[artist] +=1}
    artist_hash
  end
end

