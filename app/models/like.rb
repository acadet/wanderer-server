class Like < ActiveRecord::Base
  belongs_to :place

  def self.toggle(place_id, token)
    l = all.select { |e| e.device_token == token && e.place_id == place_id }.first

    if l.nil?
      Like.create(place_id: place_id, device_token: token)
    else
      l.destroy
    end
  end
end
