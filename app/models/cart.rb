class Cart < ApplicationRecord
    belongs_to :carriage, optional: true
    belongs_to :user, optional: true
    has_many :orders
end
