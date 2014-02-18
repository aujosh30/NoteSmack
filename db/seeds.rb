# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

User.create!(FirstName: 'Josh', LastName: 'Kendrick', Email: 'jck0004@auburn.edu',
              UserName: 'aujosh30', Password: '1234', School: 'Auburn University', DateCreate: Time.new)


User.create!(FirstName: 'Scott', LastName: 'Blankenship', Email: 'scott.blankenship@Okstate.edu',
             UserName: 'sBlanck12', Password: '1234', School: 'Okalahoma State', DateCreate: Time.new)