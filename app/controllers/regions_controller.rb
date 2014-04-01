class RegionsController < ApplicationController

  def create
    @regions = Region.all
    @region = Region.create(params[:region])
    redirect_to(:back)
  end

end
