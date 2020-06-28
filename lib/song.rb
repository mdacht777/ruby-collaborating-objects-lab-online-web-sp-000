class Song
  attr_accessor :artist, :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  def self.artist_name
      # binding.pry
      if self.artist.nil?
        nil
      else
      self.artist.name
    end
  end
  def self.new_by_filename(file)
    file = file.chomp(".mp3").split(" - ")
    song = Song.new(file[1])
    artist_name = file[0]
    song
  end  
end
