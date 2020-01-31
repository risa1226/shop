class Cart < ApplicationRecord
    belongs_to :carriage
    belongs_to :user
    belongs_to :order
end
