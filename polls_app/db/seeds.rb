# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user1 = User.create!(username: "Won")
user2 = User.create!(username: "Matt")

poll1 = Poll.create!(title: "Mac vs PC", author_id: user1.id)
poll2 = Poll.create!(title: "Favorite Movies", author_id: user2.id)

question1 = Question.create!(text: "Mac or PC?", poll_id: poll1.id)
question2 = Question.create!(text: "Is your favorite movie a Star Wars movie", poll_id: poll2.id)
question3 = Question.create!(text: "What is it?", poll_id: poll2.id)

choice1 = AnswerChoice.create!(text: "Mac", question_id: question1.id)
choice2 = AnswerChoice.create!(text: "PC", question_id: question1.id)
choice3 = AnswerChoice.create!(text: "Yes", question_id: question2.id)
choice4 = AnswerChoice.create!(text: "No", question_id: question2.id)
choice5 = AnswerChoice.create!(text: "Star Wars1", question_id: question3.id)
choice6 = AnswerChoice.create!(text: "Star Wars2", question_id: question3.id)
choice7 = AnswerChoice.create!(text: "Star Wars3", question_id: question3.id)
choice8 = AnswerChoice.create!(text: "Star Wars4", question_id: question3.id)

response1 = Response.create!(answer_choice_id: choice1.id, user_id: user1.id) 
response2 = Response.create!(answer_choice_id: choice1.id, user_id: user2.id) 
response3 = Response.create!(answer_choice_id: choice3.id, user_id: user2.id) 
response4 = Response.create!(answer_choice_id: choice7.id, user_id: user2.id) 