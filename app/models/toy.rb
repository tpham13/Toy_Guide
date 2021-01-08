
class Toy < ApplicationRecord
  belongs_to :toy_category
  validates :title, :description, :price, presence: true
end
