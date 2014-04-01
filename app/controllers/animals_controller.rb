class AnimalsController < ApplicationController

  def index
    @regions = Region.all
    @animals = Animal.all
    @sightings = Sighting.all
    render('index.html.erb')
  end

  def create
    @sighting = Sighting.new
    @regions = Region.all
    @animals = Animal.all
    @sightings = Sighting.all
    @animal = Animal.create(params[:animal])
    render('index.html.erb')
  end

  def update
    @regions = Region.all
    @animals = Animal.all
    @sightings = Sighting.all
    @animal = Animal.find(params[:id])
    @animal.update(params[:animal])
    render('index.html.erb')
  end

end
