class Order < ApplicationRecord
    belongs_to :carriage
    has_many :carts
    has_many :items
end
