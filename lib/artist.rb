class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize name
    @name = name
    @songs = []
    @@all << self
  end

  def add_song song
    song.add_artist self
    @songs << song
  end

  def add_song_by_name song_name
    song_name = Song.new song_name
    song_name.add_artist self
    @songs << song_name
  end

  def self.song_count
    @@all.reduce(0) do |song_count, artist|
      song_count += artist.songs.count
    end
  end

end