
User.create!(email:'cs@nyc.com', password:'password')
user1 = User.create!(email:'sam@adams.com', password:'password')
User.create!(email:'bob_super@nyc.com', password:'password')
user2 = User.create!(email: 'reggie@jackson.com', password:'password')

cat1 = Category.create!(name:'Electrical')
cat2 = Category.create!(name:'Plumbing')

Category.create!(name:'Structural')
Category.create!(name:'Other')

Ticket.create!(issue: 'Blown out fuse', description: 'I turned on the fan in my apartment and now the power is out', level: 'Medium', housing_project: 'Stuy Town', building: 'A1', other_details: 'apartment 12 floor 6', image: 'http://i.imgur.com/FYrdhK6.jpg', user: user2, category: cat1, status: false)

Ticket.create!(issue: 'Ceiling is caving in from water', description: 'Leak from upstairs is damaging my ceiling please help', level: 'High', housing_project: 'Bushwick Houses', building: 'B9', other_details: 'apartment 5 floor 15', image: 'http://i.imgur.com/zsrElqP.jpg', user: user1, category: cat2, status: false)


