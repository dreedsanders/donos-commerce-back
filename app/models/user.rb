class User < ApplicationRecord
    has_secure_password

    has_many :items 
    has_many :user_reviews
    has_many :transactions
end
