class Hero
  HEROES = []
  attr_accessor :name, :power, :bio

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end
end