# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.delete_all
Photo.create(title: 'A1', img_url: 'md2.jpg',tag_list: 't1, t2')
Photo.create(title: 'A2', img_url: 'md3.jpg',tag_list: 't2, t3, t6')
Photo.create(title: 'A3', img_url: 'md4.jpg',tag_list: 't3, t4')
Photo.create(title: 'A4', img_url: 'md5.jpg',tag_list: 't4, t5, t6')