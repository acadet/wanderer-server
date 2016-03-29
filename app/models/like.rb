class Like < ActiveRecord::Base
  belongs_to :place

  def self.has_device_token(token)
    all.select { |e| e.device_token == token }.first != nil
  end
end
