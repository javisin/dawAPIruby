class Product < ApplicationRecord
  has_many :sizes
  has_one_attached :image
end
