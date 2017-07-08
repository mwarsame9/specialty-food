class Product < ApplicationRecord
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
  has_many :reviews

end
