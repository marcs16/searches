# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({ name: 'Star Wars' ,  name: 'Lord of the Rings' })
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{ name: 'Julia' ,  email: 't@t.com' ,  password: 'password' ,  password_confirmation: 'password' },
             { name: 'Li' ,  email: 't@t1.com' ,  password: 'password' ,  password_confirmation: 'password' }, 
             { name: 'Shonda' ,  email: 't@t2.com' ,  password: 'password' ,  password_confirmation: 'password' },
             { name: 'Julius' ,  email: 't@t3.com' ,  password: 'password' ,  password_confirmation: 'password' },
             { name: 'Andrew' ,  email: 't@t4.com' ,  password: 'password' ,  password_confirmation: 'password' },
             { name: 'Sally' ,  email: 't@t5.com' ,  password: 'password' ,  password_confirmation: 'password' },
             { name: 'Shon' ,  email: 't@t6.com' ,  password: 'password' ,  password_confirmation: 'password' }])