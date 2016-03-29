class PlacesController < ApplicationController
  def index
    respond_to do |f|
      f.html
      f.json { render json: Place.by_visit_date, status: :ok }
    end
  end
end
