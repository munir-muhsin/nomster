class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, presence: true, length:  { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true


  geocoded_by :address
  after_validation :geocode 

  validates :name, presence: true 
end
