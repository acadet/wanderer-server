class PicturesController < ApplicationController
  def for_place
    place_id = params[:id].to_i
    p        = Place.all.select { |e| e.id == place_id }.first
    status   = if p.nil? then
                 :not_found
               else
                 :ok
               end
    data     = if p.nil? then
                 {}
               else
                 p.pictures
               end

    respond_to do |f|
      f.html
      f.json { render json: data, status: status }
    end
  end
end
