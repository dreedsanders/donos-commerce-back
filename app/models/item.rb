class Item < ApplicationRecord
    belongs_to :user 
    has_one :buyer
    has_one :seller 
    has_one :transaction
end
