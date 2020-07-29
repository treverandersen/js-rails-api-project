# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create([
  { title: 'Video Title 1', show_notes: 'This is where the description of the video goes.', length: '24:38', video: 'https://youtube.com' },
  { title: 'Video Title 2', show_notes: 'This is a description', length: '18:35', video: 'https://youtube.com' }
])
