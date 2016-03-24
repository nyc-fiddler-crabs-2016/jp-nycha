
User.create!(email:'cs@nyc.com', password:'password')
User.create!(email:'sam@adams.com', password:'password')
User.create!(email:'bob_super@nyc.com', password:'password')
User.create!(email: 'reggie@jackson.com', password:'password')

Category.create!(name:'Plumbing')
Category.create!(name:'Electrical')
Category.create!(name:'Structural')
Category.create!(name:'Other')

Ticket.create!(issue: 'Blown out fuse', description: 'I turned on the fan in my apartment and now the power is out', level: 'Medium', image: 'http://i.imgur.com/FYrdhK6.jpg', user: 'sam@adams.com', category: 'Electrical', closed: false)

Ticket.create!(issue: 'Ceiling is caving in from water', description: 'Leak from upstairs is damaging my ceiling please help', level: 'High', user:'reggie@jackson.com', category: 'Plumbing', closed: false)


