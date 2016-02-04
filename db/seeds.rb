# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Employee"})
r2 = Role.create({name: "Admin"})
r3 = Role.create({name: "Admin/Employee"})

u1 = User.create({username: "Corey", password: "confirm1", password_confirmation: "confirm1", role_id: r1.id})
u2 = User.create({username: "Admin", password: "confirm1", password_confirmation: "confirm1", role_id: r2.id})