class Order < ApplicationRecord
    has_many :carts
    has_many :items
end
