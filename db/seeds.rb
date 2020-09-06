# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create(email: 'admin@admin.com', password: '123456', password_confirmation: '123456')
(1..5).each do |number|
  user = User.create(email: "user-#{number}@test.com", password: '123456', password_confirmation: '123456')
  topic = Topic.create(name: "Topic-#{number}")
  Question.create(title: "Question-#{number}", description: "Question-#{number} description, please provide answer", user_id: user.id, topic_id: topic.id)
end
