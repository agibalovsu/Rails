# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create(first_name: 'Sergey', last_name: 'Agibalov', email: 'agibalovsu@mail.ru')

categories = Category.create!([
  { title: 'Ruby' }, 
  { title: 'SQL' }, 
  { title: 'Rails' }, 
  { title: 'HTML'}
])

tests = Test.create([
  { title: 'Основы Ruby', level: 0,   category_id: categories[0].id },
  { title: 'SQL', level: 0,  category_id: categories[1].id },
  { title: 'Ruby on Rails', level: 0,   category_id: categories[2].id },
  { title: 'HTML', level: 0,   category_id: categories[3].id }
])

questions = Question.create([
  { body: 'Как обозначается конструктор в Ruby?', test_id: tests[0].id },
  { body: 'Что означает R в аббревиатуре CRUD?', test_id: tests[1].id },
  { body: 'При помощи какой команды создается новый скелет приложения?', test_id: tests[2].id },
  { body: 'При помощи какой команды создается ссылка?', test_id: tests[3].id }
])

answers = Answer.create([
  { body: 'Initializer', question_id: questions[0].id },
  { body: 'Initialize', correct: true, question_id: questions[0].id },
  { body: 'Init', question_id: questions[0].id },
  { body: 'Ruby', question_id: questions[1].id },
  { body: 'Read', correct: true, question_id: questions[1].id },
  { body: 'Right', question_id: questions[1].id },
  { body: 'New', correct: true, question_id: questions[2].id },
  { body: 'Create', question_id: questions[2].id },
  { body: 'Select', question_id: questions[2].id },
  { body: 'Href', correct: true, question_id: questions[3].id },
  { body: 'Hr', question_id: questions[3].id },
  { body: 'Em', question_id: questions[3].id }
])
