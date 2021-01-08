class ToySerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :title, :description, :price, :url, :toy_category_id
  # deleted :toy_category_id, :toy_category from the attributes since belongs_to show the relationship btwn toys and toy category
  belongs_to :toy_category
end
