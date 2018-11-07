# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "AJOUT DES 10 USERS et des 10 ARTICLES"
10.times do |i|
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
	Article.create(title: Faker::Lorem.word.capitalize, content: Faker::Movie.quote, user_id: rand(1..10))
end
puts "AJOUT DE 5 CATEGORIE"
5.times do |i|
	Categorie.create(name: Faker::Food.dish)
end


puts "AJOUT DES ID CATEGORIE AUX ARTICLES"
tour = 1
10.times do |i|
	if i%2 == 0 && i !=0
		tour += 1
	end
	# puts "TOUR: #{tour}" #pour CATEGORIE
	# puts "\tI+1: #{i+1}" #pour ARTICLE
	Article.find(i+1).update(categorie_id: Categorie.find(tour).id)
end

puts "AJOUT DES 15 COMMENTAIRES"
15.times do |i|
	Commentaire.create(article_id: rand(1..10), user_id: rand(1..10), content: Faker::Pokemon.location)
end

puts "AJOUT DES 15 LIKES"
15.times do |i|
	Like.create(article_id: rand(1..10), user_id: rand(1..10))
end