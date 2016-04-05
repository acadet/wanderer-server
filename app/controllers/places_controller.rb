class PlacesController < ApplicationController
  def index
    @places = Place.by_visit_date

    if request.headers.key? :deviceToken
      device_token = request.headers[:deviceToken]
      @places      = @places.map do |e|
        f             = e.as_json
        f[:is_liking] = Like.like?(e.id, device_token)
        f
      end
    end

    respond_to do |f|
      f.html
      f.json { render json: @places, status: :ok }
    end
  end
end
