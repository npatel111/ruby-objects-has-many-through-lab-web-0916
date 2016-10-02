class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres#get info from songs, which is linked to Artist
    self.songs.collect do |song|
      song.genre
    end
  end

end
