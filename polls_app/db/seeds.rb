# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ username: 'Kobe' }, { username: 'Rex' }, { username: 'John' }])

polls = Poll.create([{ title: 'poll_one', user_id: users.first.id }, { title: 'poll_two', user_id: users[1].id}, { title: 'poll_three', user_id: users.last.id }])
questions = Question.create([{text: 'question_one', poll_id: polls.first.id }, 
  {text: 'question_two', poll_id: polls.first.id }, { text: 'question_three', poll_id: polls.last.id }])
answerchoices = AnswerChoice.create!([{text: 'answer_one', question_id: questions.first.id},{text: 'answer_two', question_id: questions[1].id},{text: 'answer_three', question_id: questions.last.id}])
responses = Response.create([{ user_id: users.last.id, answer_choice_id: answerchoices.last.id },{ user_id: users[1].id, answer_choice_id: answerchoices[1].id  },
{user_id: users.first.id, answer_choice_id: answerchoices.last.id }])
