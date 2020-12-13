# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require ‘rest-client’

toy_listings = RestClient.get 'https://openapi.etsy.com/v2/listings/active?api_key=hxr4z7lluezdeklqxdzk6pj5&taxonomy_id=1580&taxonomy_id=1581'

#put a byebug here to see the data structure

toy_listings_array = JSON.parse(toy_listings)[“results”]

toys = rm_array.each do |toy|
    Toy.create_or_find_by(
    title: toy["title"],
    description: toy["description"],
    price: toy["price"],
    link: toy["url"],
    toy_category_id: toy["birth_to_one"],
    )
end

# user1 = User.create_or_find_by(name: "chris")
# user2 = User.create_or_find_by(name: "ngan")
# user3 = User.create_or_find_by(name: "christy")
# user4 = User.create_or_find_by(name: "katrina")
# user5 = User.create_or_find_by(name: "somie")

birth_to_one = ToyCategory.create_or_find_by(name: "Birth to One")
learning_and_school = ToyCategory.create_or_find_by(age: "Learning and School")
puzzle = ToyCategory.create_or_find_by(age: "Puzzle")



# toy1 = Toy.create_or_find_by(title:"Mini Rabbit", description:"Your baby will love our toy animals and the shapes made especially for tiny hands to grasp onto. The little bell inside is perfect to stimulate the baby s hearing. Made in organic cotton knit.", development_area:"social emotional, physical", image:, link_to_purchase:"https://www.maisonette.com/product/mini-rabbit-off-white", user_id: , age_range_id:)
# toy2 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy3 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy4 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy5 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy6 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy7 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy8 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy9 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
# toy10 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)