class Example::HomeworldController < AuthenticatedController
  def show
    result = Swapi.get_planet params[:id]
    @homeworld = Homeworld.new result
  end
  def index; end
end