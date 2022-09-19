# git
- git add . 
- git commit -m "запись"
- git push 

# Основной принцип работы сервера 
-смотрим в routes.rb, для добавления в адресную строку questions
-добавляем controller
-добавляем views
# создание миграции для модели(таблицы)
## rails g model Film
### добавляем поля для таблицы, где t.string - тип поля, name - название поля.
class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :name
      t.text   :description
      t.timestamps
    end
  end
end

## Команда для приминения миграции 
-rails db:migrate

## Добавляем в файл routes.rb, get "/films" - для адресной строки, а to: "films#index" - контроллер и action
-  get "/films", to:"films#index"

## В controllers создаю films_controller.rb, добавляем action#index
## В views создаю в папочке films, index.html.erb 
## В консоли создаём записи с фильмами
- Film.create!(name: "Matrix", description: "fantastic")

## Добавили новый метод new 
## Добавили Валидацию, presence проверка на присутствие, lenght - минимальная длина символов поля
- validates :title, presence: true, length: {minimum: 2}