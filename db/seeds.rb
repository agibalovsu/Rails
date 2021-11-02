# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create(first_name: 'Sergey', last_name: 'Agibalov', email: 'agibalovsu@mail.ru')

categories = Category.create([
  { title: 'Ruby' }, 
  { title: 'SQL' }, 
  { title: 'Rails' }, 
  { title: 'HTML'}
])

tests = Test.create([
  { title: 'Основы Ruby', level: 0,   category_id: 1 },
  { title: 'SQL', level: 0,  category_id: 2 },
  { title: 'Ruby on Rails', level: 0,   category_id: 3 },
  { title: 'HTML', level: 0,   category_id: 4 }
])

questions = Question.create([
  { body: 'Как обозначается конструктор в Ruby?', test_id: 1 },
  { body: 'Что означает R в аббревиатуре CRUD?', test_id: 2 },
  { body: 'При помощи какой команды создается новый скелет приложения?', test_id: 3 },
  { body: 'При помощи какой команды создается ссылка?', test_id: 4 }
])

answers = Answer.create([
  { body: 'Initializer', question_id: 1 },
  { body: 'Initialize', correct: true, question_id: 1 },
  { body: 'Init', question_id: 1 },
  { body: 'Ruby', question_id: 2 },
  { body: 'Read', correct: true, question_id: 2 },
  { body: 'Right', question_id: 2 },
  { body: 'New', correct: true, question_id: 3 },
  { body: 'Create', question_id: 3 },
  { body: 'Select', question_id: 3 },
  { body: 'Href', correct: true, question_id: 4 },
  { body: 'Hr', question_id: 4 },
  { body: 'Em', question_id: 4 }
])
