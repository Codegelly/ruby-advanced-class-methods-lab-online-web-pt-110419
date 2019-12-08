class Song
  attr_accessor :name, :artist_name
  @@all = []
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
   def self.create
     song = Song.new
     song.save
     song
   end   
   def self.new_by_name(song_name)
     song = Song.new
     song.name = song_name
     song 
   end 
   
   def self.create_by_name(song_name)  
     song = Song.new 
     song.name = song_name
     song.save
     song
   end 
   def self.find_by_name(song_name)
     @@all.detect {|song| song_name == song.name}  
  end   
  
  def self.find_or_create_by_name(song_name)
     result =  self.find_by_name(song_name)
     if result
       result
     else 
       self.create_by_name(song_name)
    end 
  def self.alphabetical 
    
  end   
  end   
end
