class Review < ApplicationRecord
  validates :content, :presence => true
  belongs_to :product

end
