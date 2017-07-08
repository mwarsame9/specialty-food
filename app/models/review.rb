class Review < ApplicationRecord
  validates :author, :presence => true
  validates :content, :presence => true
  validates :rating, :presence => true
  validates_length_of :content, minimum: 50
  validates_length_of :content, maximum: 250
  validates_numericality_of :rating, greater_than_or_equal_to: 1
  validates_numericality_of :rating, less_than_or_equal_to: 5


  belongs_to :product

end
