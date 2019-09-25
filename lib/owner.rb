class Owner

@@all = []
@@pets = {:dogs => [], :cats => []}


  attr_accessor :name, :pets, :dogs, :cats  #these are things you can change
  attr_reader :species #tells the owner you cannot change the species

  def initialize(species)
    @species = species
    @name = name
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end

def self.all
  @@all
end

def self.reset_all
  @@all.clear
end

def self.count
  @@all.length
end

def say_species
  "I am a #{@species}."
end

def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end

  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end

  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end

   end

   def play_with_cats
     pets[:cats].map {|cat| cat.mood = "happy"}
end

end
