# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create_or_find_by(name: "chris")
user2 = User.create_or_find_by(name: "ngan")
user3 = User.create_or_find_by(name: "christy")
user4 = User.create_or_find_by(name: "katrina")
user5 = User.create_or_find_by(name: "somie")

birth_to_one = AgeRange.create_or_find_by(age: "birth to 1")
one_to_two = AgeRange.create_or_find_by(age: "1 to 2")
two_to_three = AgeRange.create_or_find_by(age: "2 to 3")
three_to_five = AgeRange.create_or_find_by(age: "3 to 5")

toy1 = Toy.create_or_find_by(title:"Mini Rabbit", description:"Your baby will love our toy animals and the shapes made especially for tiny hands to grasp onto. The little bell inside is perfect to stimulate the baby s hearing. Made in organic cotton knit.", development_area:"social emotional, physical", image:, link_to_purchase:"https://www.maisonette.com/product/mini-rabbit-off-white", user_id: , age_range_id:)
toy2 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy3 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy4 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy5 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy6 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy7 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy8 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy9 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)
toy10 = Toy.create_or_find_by(title:, description:, development_area:, image:, link_to_purchase:, user_id: , age_range_id:)