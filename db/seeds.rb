# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
UserSkill.delete_all
User.delete_all
Skill.delete_all

User.create(id: 1, first_name: "Per", last_name: "Hansen",
            about_me: "Jeg liker å gjøre rent og jeg kan få vekk de vanskeligste flekkene.",
            email: "per@gmail.com", password: "123456",
            password_confirmation: "123456", phone_number: "11122333")
User.create(id: 2, first_name: "Ole", last_name: "Pedersen",
            about_me: "Jeg er bilmekanikker og jeg kan reperaner bilen din. Jeg tar 200kr i timen.",
            email: "ole@gmail.com",
            password: "123456", password_confirmation: "123456", phone_number: "22222333")
User.create(id: 3, first_name: "Anne", last_name: "Kristensen",
            about_me: "Jeg flink til hagearbeid. Jeg er også ganske flink til å male",
            email: "anne@gmail.com",
            password: "123456", password_confirmation: "123456", phone_number: "3332333")
User.create(id: 4, first_name: "Lars", last_name: "Dahl",
            about_me: "Jeg er snekker og kan hjelpe deg med å pusse opp hjemme.",
            email: "lars@gmail.com",
            password: "123456", password_confirmation: "123456", phone_number: "44422333")
User.create(id: 5, first_name: "Kristine", last_name: "Sjøen",
            about_me: "Jeg er flink med barn. Jeg har 5 søsken så jeg har mye erfaring",
            email: "kristine@gmail.com",
            password: "123456", password_confirmation: "123456", phone_number: "5552333")

Skill.create(id: 1, title: "Gardening")
Skill.create(id: 2, title: "Lawn mowing")
Skill.create(id: 3, title: "Childcare")
Skill.create(id: 4, title: "Car rapair")
Skill.create(id: 5, title: "Cleaning")
Skill.create(id: 6, title: "Painting")
Skill.create(id: 7, title: "Carpenter")
Skill.create(id: 8, title: "Electrical work")

UserSkill.create(user_id: 1, skill_id: 5)
UserSkill.create(user_id: 2, skill_id: 4)
UserSkill.create(user_id: 3, skill_id: 1)
UserSkill.create(user_id: 3, skill_id: 2)
UserSkill.create(user_id: 3, skill_id: 6)
UserSkill.create(user_id: 4, skill_id: 7)
UserSkill.create(user_id: 5, skill_id: 3)
