class Song
  attr_accessor :name, :artist_name
  @@all = []
create = Song.new
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
   def create
     song.create 
   end   
end
