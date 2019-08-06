# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

Article.create(
  title: "testing",
  content: "a\nbc\ndef"
)

10.times do
  content = "#{Faker::Lorem.paragraph(sentence_count: Random.rand(8..10), supplemental: true, random_sentences_to_add: 5)}\n"
  Random.rand(4..7).times do
    content += "#{Faker::Lorem.paragraph(sentence_count: Random.rand(8..10), supplemental: true, random_sentences_to_add: 5)}\n"
  end
  Article.create(
    title: Faker::Movies::HarryPotter.character,
    content: content
  )
end
