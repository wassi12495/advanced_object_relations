class City

  # Has many banks, through branches
  # Has many (bank) branches

  # @name

  attr_reader :name
  attr_accessor :branches

  @@all = []

  def initialize(name)

    @name = name
    @@all << self

  end


  def add_branch(bank)
    Branch.new( bank ,self)
  end

  def branches
    # iterate thru all, ask if city == self
    Branch.all.select{|branch| branch.city == self}
  end

  def banks
    self.branches.collect{|city| city.bank}.uniq
  end

  def self.all
    @@all
  end

end
