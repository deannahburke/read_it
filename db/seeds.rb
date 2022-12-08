# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
certain_hunger = Book.create!(title: "A Certain Hunger", publication_year: 2020, author: "Chelsea G. Summers", genre: "Horror", summary: "A food critic turns cannibal")
blind_willow = Book.create!(title: "Blind Willow, Sleeping Woman", publication_year: 2008, author: "Haruki Murakami", genre: "Short Story", summary: "Collection of short stories")
roadside_picnic = Book.create!(title: "Roadside Picnic", publication_year: 1972, author: "Arkady Strugatsky", genre: "Sci-Fi", summary: "Alien invasion of small town in Russia")
parable = Book.create!(title: "Parable of the Sower", publication_year: 1993, author: "Octavia E. Butler", genre: "Drama", summary: "Minister's daughter loses family and sets out into American landscape")
prodigal = Book.create!(title: "Prodigal Summer", publication_year: 2004, author: "Barbara Kingsolver", genre: "Drama", summary: "A summer in the Appalachian mountains")