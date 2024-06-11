class Homeworld
  include ActiveModel::Model

  attr_accessor :name, :gravity, :terrain, :surface_water, :population

  # whitelisting properties I actually care about, and ignoring the rest
  def initialize(attributes = nil)
    self.name = attributes["name"]
    self.gravity = attributes["gravity"]
    self.terrain = attributes["terrain"]
    self.surface_water = attributes["surface_water"] == "1"
    self.population = attributes["population"]
  end
end