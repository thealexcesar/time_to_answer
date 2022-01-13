# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

pass = "123456"
User.create![
  {
    name: "alex", email: "thealexcesar@gmail.com",
    password: pass, password_confirmation: pass, type: "admin"
  },
  {
    name: "son goku", email: "kakaroto@gmail.com",
    password: pass, password_confirmation: pass, type: "user"
  },
  {
    name: "Naruto Usumaki", email: "kurama@email.com",
    branch: "Ttajaí", infraction: 495574, type: "user"
  },
]