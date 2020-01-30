class Carriage < ApplicationRecord
    belongs_to :prefecture
    has_many :orders
end
