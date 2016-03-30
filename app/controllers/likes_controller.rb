class LikesController < ApplicationController
  def toggle
    puts params
    p = params.require(:like).permit(:device_token)
    Like.toggle(params[:id].to_i, p[:device_token])

    respond_to do |f|
      f.html
      f.json { render json: {}, status: :ok }
    end
  end
end
