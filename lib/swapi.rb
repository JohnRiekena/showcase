require 'rest-client'
require 'json'

module Swapi
  class << self
    BASE_URL = 'https://swapi.dev/api'
    PLANETS = 'planets'
    PEOPLE = 'people'

    def get_all(type)
      get type
    end

    def get_planet(planet_id)
      get PLANETS, planet_id
    end

    def get_person(people_id)
      get PEOPLE, people_id
    end

    private

    def get(type, id = '')
      response = RestClient.get "#{BASE_URL}/#{type}/#{id}", {accept: :json}
      JSON.parse(response.body)
    end
  end
end
