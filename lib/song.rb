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
     @@all.detect {|song| song.name == song_name}  
  end   
  
  def self.find_or_create_by_name(song_name)
     result =  self.find_by_name(song_name)
     if result
       result
     else 
       self.create_by_name(song_name)
    end 
  end 
  def self.alphabetical 
   @@all.sort_by {|s| s.name}
  end   
  def self.new_from_filename(filename)
   song_arry=filename.split("-")
   song_arry[1]=song_arry[1].chomp(".mp3")
   song=Song.new 
   song.name=song_arry[1]
   song.artist_name=song_arry[0]
   song
  end  
  
  def self.create_from_filename(file_name)
   
  end  
  
  def self.destroy_all 
    
  end   
  
end
