class Carriage < ApplicationRecord
    belongs_to :prefecture
    has_many :carts
end
