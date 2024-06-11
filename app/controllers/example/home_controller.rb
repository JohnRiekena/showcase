class Example::HomeController < AuthenticatedController
  def index; end

  def people
    people = Swapi.get_all(:people)&.dig('results')
    @people = people&.map { |person| Person.new person } || []
  end
end