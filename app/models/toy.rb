
class Toy < ApplicationRecord
  belongs_to :toy_category
  validates :title, presence: true
end
