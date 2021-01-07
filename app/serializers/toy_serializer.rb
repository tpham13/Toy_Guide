class ToySerializer
  include FastJsonapi::ObjectSerializer
  #line 3 and 4 is if you want to show the association relationship and its attributes
  # attributes :title, :description, :price, :url, :toy_category_id
  # belongs_to :toy_category
  #to keep it simple for now, you can just get the associated model (toy_category)
  attributes :id, :title, :description, :price, :url, :toy_category_id
  # deleted :toy_category_id, :toy_category from the attributes since belongs_to show the relationship btwn toys and toy category
  belongs_to :toy_category
end
