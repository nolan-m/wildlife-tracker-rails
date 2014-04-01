Wildlife::Application.routes.draw do
  match('/animals', {:via => :get, :to => 'animals#index'})
  match('/animals', {:via => :post, :to => 'animals#create'})
  match('/animals/:id', {:via => [:patch, :put], :to => 'animals#update'})
  match('/regions', {:via => :post, :to => 'regions#create'})
  match('/sightings', {:via => :post, :to => 'sightings#create'})
  match('/sightings', {:via => :get, :to => 'sightings#search_date'})
  match('/sightings/search_species', {:via => :get, :to => 'sightings#search_species'})
   match('/sightings/search_regions', {:via => :get, :to => 'sightings#search_regions'})
end
