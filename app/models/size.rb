class Size < ApplicationRecord
    belongs_to :product
    validates :value, presence: true
    validates :quantity, presence: true
    validates :product_id, presence: true
end
