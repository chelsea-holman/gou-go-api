# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.create(name: 'Charlies', address: '123 Shanghai', category: 'food', image: 'http://www.smartshanghai.com/uploads/articles/2019/05/4341557460180.jpg', access: 'indoor and outdoor', features: 'dog bowl')

Space.create(name: 'KFC', address: '123 Shanghai', category: 'food', image: 'http://www.smartshanghai.com/uploads/articles/2019/05/4341557460180.jpg', access: 'indoor and outdoor', features: 'dog bowl')
Space.create(name: 'Chilis', address: '456 Shanghai', category: 'food', image: 'http://www.smartshanghai.com/uploads/articles/2019/05/4341557460180.jpg', access: 'indoor and outdoor', features: 'dog bowl',categories: [0,3])
