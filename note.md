# User story: 
-User is able see a list of toys for children in age range 0-1, 1-2, 2-3, 3-5. 
-User is also able to add the toys to the recommended list 

## Models: 
1) User
- name

2) Age Range
- birth to one
- one to two
- two to three
- three to five

3) Toy
- title 
- description
- development areas 
- link to purchase
- image

### Association: 
User 
- has_many toys

Age range
- has_many toys 

Toy
- belongs_to :age range
- belongs_to :user

Flow: 

