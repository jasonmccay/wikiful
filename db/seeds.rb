# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([

	{ name: "History"},
	{ name: "Biology"},
	{ name: "Literature"},
	{ name: "Mathematics"},
	{ name: "Music Theory"},
	{ name: "Sports"},
	{ name: "Computer Science"},
	{ name: "Chemistry"}
])

for i in 0..49

	title = Faker::Lorem.sentence(rand(2..10)).chomp('.')
	content = Faker::Lorem.paragraph(word_count=250)

	category = Category.all.sample
	a = Article.create(title: title, content: content, categories: [category,])

end