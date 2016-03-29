class Place < ActiveRecord::Base
  has_many :pictures
  has_one :main_picture, class_name: "Picture"

  scope :by_visit_date, -> { order(visit_date: :desc) }

  def as_json(options = {})
    hash                = super.as_json options
    hash[:main_picture] = main_picture.as_json unless main_picture_id.nil?
    hash
  end
end
