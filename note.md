# User story: 
-User is able see a list of toys for children in categories: birth to one, learning and school, puzzle
-User is also able to add the toys to each category

## Models: 

1) Toy
- title 
- description
- price
- url
- toy_category_id


2) Toy Category
- name

### Association: 
Toy
- belongs_to :toy_category

Toy Category
- has_many :toys



