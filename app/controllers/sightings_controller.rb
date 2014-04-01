class SightingsController < ApplicationController

  def create
    @sightings = Sighting.all
    @sighting = Sighting.create(params[:sighting])
    redirect_to('/animals')
  end

  def search_date
    @sightings = Sighting.where( :date =>(params['sightings'][:start_date]..params['sightings'][:end_date]))
    render('results.html.erb')
  end

  def search_species
    @sightings = Sighting.where(:animal_id => params['sightings'][:animal_id] )
    render('results.html.erb')
  end

  def search_regions
    @sightings = Sighting.where(:region_id => params['sightings'][:region_id] )
    render('results.html.erb')
  end
end
