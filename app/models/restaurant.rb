class Restaurant < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 5}
  # attr_accessible :restaurant_id, :name, :image
  # belongs_to :restaurant
  mount_uploader :image, ImageUploader
  mount_uploader :menu, MenuUploader

  belongs_to :owner

end
