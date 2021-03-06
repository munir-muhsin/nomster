class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  validates :name, presence: true, length:  { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
  

  geocoded_by :address
  after_validation :geocode 

  validates :name, presence: true 

  reverse_geocoded_by :latitude, :longitude
after_validation :reverse_geocode
extend Geocoder::Model::ActiveRecord
end
