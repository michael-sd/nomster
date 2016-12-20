class Place < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 2}
  validates :address, presence: true
  validates :description, presence: true
end
