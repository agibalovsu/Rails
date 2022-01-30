# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).



categories = Category.create!([
                                  {title: 'Frontend'},
                                  {title: 'Backend'},
                                  {title: 'Mobile'}
                              ])

tests = Test.create!([
                         {title: 'Ruby', level: 2, category: categories[1], author: users[0]},
                         {title: 'HTML', level: 1, category: categories[0], author: users[0]},
                         {title: 'Python', level: 3, category: categories[1], author: users[0]},
                         {title: 'Swift', level: 3, category: categories[2], author: users[0]},
                         {title: 'JS', level: 2, category: categories[0], author: users[0]}
                     ])

questions = Question.create!([
                                 {body: 'Кто такой Matz?', test: tests[0]},
                                 {body: 'Что такое HTML?', test: tests[1]},
                                 {body: 'Кто такой Gvido?', test: tests[2]},
                                 {body: 'Swift это ЯП под Android или под iOS?', test: tests[3]},
                                 {body: 'Что такое Callback hell?', test: tests[4]}
                             ])

answers = Answer.create!([
                             {body: 'Создатель языка Руби', correct: true, question: questions[0]},
                             {body: 'Создатель языка Пайтон', correct: false, question: questions[0]},
                             {body: 'Создатель яыка JS', correct: false, question: questions[0]},
                             {body: 'Создатель языка PHP', correct: false, question: questions[0]},
                             {body: 'HyperText Markup Language', correct: true, question: questions[1]},
                             {body: 'Hype Turbo Multi Language', correct: false, question: questions[1]},
                             {body: 'Создатель языка Пайтон', correct: true, question: questions[2]},
                             {body: 'Создатель языка PHP', correct: false, question: questions[2]},
                             {body: 'Под iOS', correct: true, question: questions[3]},
                             {body: 'Под Android', correct: false, question: questions[3]},
                             {body: 'В JS есть второй псевдоним - лапша', correct: true, question: questions[4]},
                             {body: 'Это такая игрушка', correct: false, question: questions[4]}
                         ])

