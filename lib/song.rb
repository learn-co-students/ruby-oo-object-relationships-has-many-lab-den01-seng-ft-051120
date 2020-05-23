class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize name, artist = nil
    @name = name
    @artist = artist
    @@all << self
  end 

  def artist= artist
    artist.add_song self
  end

  def add_artist artist
    @artist = artist
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist == nil
      return nil
    else
      return @artist.name
    end
  end

end