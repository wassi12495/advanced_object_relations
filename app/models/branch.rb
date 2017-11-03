class Branch

  # Belongs to bank
  # Belongs to location

  #bank
  #city

  @@all = []

  attr_accessor :city, :bank

  def initialize(bank, city)

    @bank = bank
    @city = city
    @@all << self

  end

  def self.all
    @@all
  end

end
