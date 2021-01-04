class ToyCategory < ApplicationRecord
    has_many :toys 
    validates :name, presence: true
    validates :name, uniqueness: true
end
