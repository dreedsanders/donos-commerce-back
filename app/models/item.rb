class Item < ApplicationRecord
    belongs_to :user 
    has_one :transfer
    has_one :buyer, through: :transfer
    has_one :seller, through: :transfer


end
