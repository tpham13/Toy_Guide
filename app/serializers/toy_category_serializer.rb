class ToyCategorySerializer
  include FastJsonapi::ObjectSerializer
  # The attributes that we’ve listed (id and name) are the ones that are whitelisted to be serialized. This basically means that: 
  # these are the attributes we are allowing the active_model_serializers gem to serialize and make into JSON
  attributes :id, :name
  has_many :toys
end
