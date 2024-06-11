class Person
  include ActiveModel::Model

  attr_accessor :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender,
                :homeworld_id, :films, :species, :vehicles, :starships, :url

  # whitelisting properties I actually care about, and ignoring the rest
  def initialize(attributes = nil)
    self.name = attributes["name"]
    self.height = attributes["height"]
    self.mass = attributes["mass"]
    self.hair_color = attributes["hair_color"]
    self.skin_color = attributes["skin_color"]
    self.eye_color = attributes["eye_color"]
    self.birth_year = attributes["birth_year"]
    self.gender = attributes["gender"]
    # API returns homeworld as a URL, but I just want the ID for now
    self.homeworld_id = attributes["homeworld"]&.split('/')&.last
    self.films = attributes["films"]
    self.species = attributes["species"]
    self.vehicles = attributes["vehicles"]
    self.starships = attributes["starships"]
    self.url = attributes["url"]
  end
end