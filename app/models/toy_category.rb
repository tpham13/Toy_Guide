class ToyCategory < ApplicationRecord
    has_many :toys 
    validates :name, presence: true
end
