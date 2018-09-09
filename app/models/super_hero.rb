class SuperHero

  attr_accessor :name, :bio, :power
  @@all = []

  def initialize(params)
    @name = params[:members][:name]
    @bio = params[:members][:bio]
    @power = params[:members][:power]
    @@all << self
  end

  def self.all
    @@all
  end

end
