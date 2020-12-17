class ToyCategory < ApplicationRecord
    has_many :toys 
    validates :title, presence: true
end
