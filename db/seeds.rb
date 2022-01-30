User.create(first_name: 'admin', last_name: 'administrator', email: 'agibalovsy@gmail.com', password: 'qwerty', password_confirmation: 'qwerty', type: 'Admin')

Category.create(title: 'HTML & CSS')
Category.create(title: 'Javascript')
Category.create(title: 'Ruby')
Category.create(title: 'Ruby on Rails')

Test.create(title: 'HTML & CSS Basic', level: 1, category_id: 8, author_id: 5)
Test.create(title: 'HTML & CSS Pro', level: 2, category_id: 8, author_id: 5)
Test.create(title: 'Javascript Basic', level: 2, category_id: 9, author_id: 5)
Test.create(title: 'Javascript Pro', level: 3, category_id: 9, author_id: 5)
Test.create(title: 'Ruby', level: 2, category_id: 10, author_id: 5)
Test.create(title: 'Ruby On Rails', level: 4, category_id: 11, author_id: 5)

Question.create(body: 'С помощью каких свойств CSS можно задать цвета фона в блоке?', test_id: 11)
Question.create(body: 'Какой тег отвечает за инициализацию таблицы?', test_id: 11)
Question.create(body: 'Какой тег используется для отображения нумерованного списка?', test_id: 11)

Question.create(body: 'Для чего используется тег <canvas>', test_id: 12)
Question.create(body: 'Что означает атрибут «poster» для тега <video>', test_id: 12)
Question.create(body: 'Как создаются переменные в SASS', test_id: 12)

Question.create(body: 'Как узнать длину строки a?', test_id: 13)
Question.create(body: 'Как при помощи jQuery получить элемент с ID my-element?', test_id: 13)
Question.create(body: 'Javascript это диалект Java для клиента?', test_id: 13)

Question.create(body: 'Выберите допустимые способы записи числа в JavaScript:', test_id: 14)
Question.create(body: 'Что содержит объект даты, созданный с помощью инструкции “new Date()”?', test_id: 14)
Question.create(body: 'Какими способами можно создать новый пустой объект?', test_id: 14)

Question.create(body: 'Что возвращает следующее выражение? <code>[1, 2, 3, 4, 5].reject { |x| x.even? }.map { |x| x * x }</code>', test_id: 15)
Question.create(body: 'Что будет возвращено следующим выражением? <code>[1, 2, 3] | [2, 3, 4]</code>', test_id: 15)
Question.create(body: 'Что возвращает следующее выражение? <code>[1, 2, 3, 4, 5].select(&:odd?)</code>', test_id: 15)

Question.create(body: 'В какой директории ROR приложения лежит основной код?', test_id: 16)
Question.create(body: 'Как создать новое ROR приложение?', test_id: 16)
Question.create(body: "Что вернет выражение? <code>['abc', 'def', 'gnt'].sort!</code>", test_id: 16)

Answer.create(body: 'bk-color', correct: false, question_id: 150)
Answer.create(body: 'background-color', correct: true, question_id: 150)
Answer.create(body: 'color', correct: false, question_id: 150)
Answer.create(body: 'background', correct: true, question_id: 150)

Answer.create(body: '<div>', correct: false, question_id: 151)
Answer.create(body: '<p>', correct: false, question_id: 151)
Answer.create(body: '<span>', correct: false, question_id: 151)
Answer.create(body: '<table>', correct: true, question_id: 151)

Answer.create(body: '<ul>', correct: false, question_id: 152)
Answer.create(body: '<list>', correct: false, question_id: 152)
Answer.create(body: '<nlist>', correct: false, question_id: 152)
Answer.create(body: '<ol>', correct: true, question_id: 152)

Answer.create(body: 'Создает список вариантов, которые можно выбирать при наборе в текстовом поле', correct: false, question_id: 153)
Answer.create(body: 'Создает область, в которой при помощи JavaScript можно рисовать разные объекты, выводить изображения', correct: true, question_id: 153)
Answer.create(body: 'Используется для редактирования шрифта текста', correct: false, question_id: 153)

Answer.create(body: 'При завершении композиции она запустится вновь', correct: false, question_id: 154)
Answer.create(body: 'Отсутствие автоматической загрузки видеофайла', correct: false, question_id: 154)
Answer.create(body: 'Выставляет изображение которое браузер будет использовать пока загружается', correct: true, question_id: 154)
Answer.create(body: 'Добавление аудиодорожки', correct: false, question_id: 154)

Answer.create(body: '&name', correct: false, question_id: 155)
Answer.create(body: '@name', correct: false, question_id: 155)
Answer.create(body: '$name', correct: true, question_id: 155)
Answer.create(body: '#name', correct: false, question_id: 155)

Answer.create(body: 'count(length)', correct: false, question_id: 156)
Answer.create(body: 'a.length', correct: true, question_id: 156)
Answer.create(body: 'Нет правильных вариантов', correct: false, question_id: 156)
Answer.create(body: 'strlen(a)', correct: false, question_id: 156)

Answer.create(body: '$("my-element")', correct: false, question_id: 157)
Answer.create(body: '$(".my-element")', correct: false, question_id: 157)
Answer.create(body: '$("#my-element")', correct: true, question_id: 157)
Answer.create(body: 'document.get("#my-element")', correct: false, question_id: 157)

Answer.create(body: 'Да', correct: false, question_id: 158)
Answer.create(body: 'Нет', correct: true, question_id: 158)

Answer.create(body: '015', correct: true, question_id: 159)
Answer.create(body: '5e-2', correct: true, question_id: 159)
Answer.create(body: '0x55', correct: true, question_id: 159)
Answer.create(body: '0b1001', correct: true, question_id: 159)

Answer.create(body: 'Текущую дату и время на начало дня', correct: false, question_id: 160)
Answer.create(body: 'Пустую дату', correct: false, question_id: 160)
Answer.create(body: 'Текущую дату и текущее время', correct: true, question_id: 160)

Answer.create(body: 'var obj = {}', correct: true, question_id: 161)
Answer.create(body: 'var obj = new {}', correct: false, question_id: 161)
Answer.create(body: 'var obj = new Object()', correct: true, question_id: 161)
Answer.create(body: 'var obj = []', correct: false, question_id: 161)

Answer.create(body: "NoMethodError: undefined method 'map'", correct: false, question_id: 162)
Answer.create(body: '[4, 16]', correct: false, question_id: 162)
Answer.create(body: '[1, 9, 25]', correct: true, question_id: 162)

Answer.create(body: '[1, 2, 3, 4]', correct: true, question_id: 163)
Answer.create(body: '[1, 4]', correct: false, question_id: 163)
Answer.create(body: '[2, 3, 4]', correct: false, question_id: 163)
Answer.create(body: '[1, 2, 3, 2, 3, 4]', correct: false, question_id: 163)
Answer.create(body: '[1, 2, 3, [2, 3, 4]]', correct: false, question_id: 163)

Answer.create(body: '[2, 4]', correct: false, question_id: 164)
Answer.create(body: '[1, 2, 3, 4, 5]', correct: false, question_id: 164)
Answer.create(body: '[1, 3, 5]', correct: true, question_id: 164)
Answer.create(body: "NoMethodError: undefined method 'select'", correct: false, question_id: 164)
Answer.create(body: 'nil', correct: false, question_id: 164)

Answer.create(body: 'bin/', correct: false, question_id: 165)
Answer.create(body: 'doc/', correct: false, question_id: 165)
Answer.create(body: 'app/', correct: true, question_id: 165)
Answer.create(body: 'log/', correct: false, question_id: 165)

Answer.create(body: 'ruby on rails new app first_app', correct: false, question_id: 166)
Answer.create(body: 'ROR magic', correct: false, question_id: 166)
Answer.create(body: 'Create application with ROR', correct: false, question_id: 166)
Answer.create(body: 'rails new first_app', correct: true, question_id: 166)

Answer.create(body: "['abc', 'def', 'gnt']", correct: true, question_id: 167)
Answer.create(body: "{'abc', 'def', 'gnt'}", correct: false, question_id: 167)
Answer.create(body: 'undefined', correct: false, question_id: 167)
Answer.create(body: 'error', correct: false, question_id: 167)
Answer.create(body: 'nil', correct: false, question_id: 167)