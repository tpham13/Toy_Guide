class Toy < ApplicationRecord
    belongs_to :user
    belongs_to :age_range
end
