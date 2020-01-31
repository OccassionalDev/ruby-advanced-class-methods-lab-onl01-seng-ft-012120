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
    new_song = Song.new
    new_song.save
    
    return new_song
  end 
  
  def self.new_by_name(name)
    new_song = Song.create
    new_song.name = name 
    
    return new_song
  end 
  
  def self.create_by_name(name)
    new_song = new_by_name(name)
    new_song.save
    
    return new_song
  end 
  
  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end 
    end
    
    return false
  end 

end
