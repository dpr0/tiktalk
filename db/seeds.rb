# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# frozen_string_literal: true

country1 = Country.create(code: 'ru',  name: 'РФ',   continent: 'Europe')
country2 = Country.create(code: 'en',  name: 'USA',  continent: 'North America')
City.create(code: 'msk',  name: 'Москва',            country_id: country1.id)
City.create(code: 'spb',  name: 'Санкт-Петербург',   country_id: country1.id)
City.create(code: 'ny',   name: 'New York',          country_id: country2.id)
University.create(code: 'mgu',     name: 'МГУ',      country_id: country1.id)
University.create(code: 'mgtu',    name: 'МГТУ',     country_id: country1.id)
University.create(code: 'spbgetu', name: 'СпбГЭТУ',  country_id: country1.id)
University.create(code: 'stnfrd',  name: 'Stanford', country_id: country2.id)
Sex.create(code: 'male',   name: 'М', color: 'white')
Sex.create(code: 'female', name: 'Ж', color: 'white')
Role.create(code: 'admin', name: 'Администратор')
Role.create(code: 'user',  name: 'Пользователь')
Interest.create(code: 'animals',  name: 'Животные')
Interest.create(code: 'auto',     name: 'Авто')
