class Bank

  # Has many customers
  # Has many branches
  # Has many cities, through branches

  # @customers
  # @name

  attr_reader :name
  attr_accessor :customers

  @@all = []

  def initialize(name)

    @name = name
    @customers = []
    @@all << self


  end

  def add_branch(city)

    Branch.new(self, city)

  end

  def branches
    # iterate thru all, ask if bank == self
    Branch.all.select{|branch| branch.bank == self}
  end

  def cities
    self.branches.collect{|bank| bank.city}.uniq
  end

  def self.all
    @@all
  end

end
