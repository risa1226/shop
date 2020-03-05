class Item < ApplicationRecord
    belongs_to :order, optional: true
    has_many :favorites
end
