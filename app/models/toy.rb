
class Toy < ApplicationRecord
  belongs_to :toy_category
  validates :title, :description, :price, :url, presence: true
end
