# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!(first_name: 'Sergey', last_name: 'Agibalov', email: 'agibalovsu@mail.ru')

categories = Category.create!([
  { title: 'Ruby' }, 
  { title: 'SQL' }, 
  { title: 'Rails' }, 
  { title: 'HTML'}
])

tests = Test.create!([
  { title: 'Основы Ruby', level: 0,  category: categories[0] },
  { title: 'SQL', level: 0,  category: categories[1] },
  { title: 'Ruby on Rails', level: 0,  category: categories[2] },
  { title: 'HTML', level: 0,  category: categories[3] }
])

questions = Question.create!([
  { body: 'Как обозначается конструктор в Ruby?', test: tests[0] },
  { body: 'Что означает R в аббревиатуре CRUD?', test: tests[1] },
  { body: 'При помощи какой команды создается новый скелет приложения?', test: tests[2] },
  { body: 'При помощи какой команды создается ссылка?', test: tests[3] }
])

answers = Answer.create!([[
  { body: 'Initializer', question: questions[0] },
  { body: 'Initialize', question: questions[0] },
  { body: 'Init', question: questions[0] },
  { body: 'Ruby', question: questions[1] },
  { body: 'Read', question: questions[1] },
  { body: 'Right', question: questions[1] },
  { body: 'New', question: questions[2] },
  { body: 'Create', question: questions[2] },
  { body: 'Select', question: questions[2] },
  { body: 'Href', question: questions[3]},
  { body: 'Hr', question: questions[3]},
  { body: 'Em', question: questions[3]}
])