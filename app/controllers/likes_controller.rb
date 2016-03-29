class LikesController < ApplicationController
  def toggle
    p = params.require(:like).permit(:device_token)
    Like.toggle(params[:id], p[:device_token])

    respond_to do |f|
      f.html
      f.json { render json: {}, status: :ok }
    end
  end
end
