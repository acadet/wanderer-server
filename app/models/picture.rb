class Picture < ActiveRecord::Base
  belongs_to :place

  def as_json(options = {})
    {
        id:  id,
        url: url
    }
  end
end
