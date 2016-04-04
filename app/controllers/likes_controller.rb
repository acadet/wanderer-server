class LikesController < ApplicationController
  def toggle
    device_token = request.headers[:deviceToken]
    Like.toggle(params[:id].to_i, device_token)

    respond_to do |f|
      f.html
      f.json { render json: {}, status: :ok }
    end
  end
end
