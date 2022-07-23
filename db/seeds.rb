# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Space.destroy_all

Space.create(name: 'Charlies', address: '123 Shanghai', category: 'restaurant', image: 'http://www.smartshanghai.com/uploads/articles/2019/05/4341557460180.jpg', access: 'indoor and outdoor', features: 'dog bowl')

Space.create(name: 'KFC', address: '123 Shanghai', category: 'bar', image: 'https://tse4-mm.cn.bing.net/th/id/OIP-C.7H4IxtafiS9Q0CF5HJE5aAHaE8?pid=ImgDet&rs=1', access: 'indoor and outdoor', features: 'dog bowl')
Space.create(name: 'West Bund', address: '456 Shanghai', category: 'park', image: 'https://tse4-mm.cn.bing.net/th/id/OIP-C.Bk1u_6ERgecRZLh4Qh234wHaFj?pid=ImgDet&rs=1', access: 'indoor and outdoor', features: 'dog bowl')
