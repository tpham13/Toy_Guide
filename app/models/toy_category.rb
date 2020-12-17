class ToyCategory < ApplicationRecord
    has_many :toys 
    validates :title, :description, :price, :url,  presence: true
end
