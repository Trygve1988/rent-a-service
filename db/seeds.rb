# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.delete_all
User.create(first_name: "Per", last_name: "Persen",
            about_me: "Jeg liker å gjøre rent og jeg kan få vekk de vanskeligste flekkene.",
            email: "per@gmail.com", password: "123456",
            password_confirmation: "123456", phone_number: "11122333")
User.create(first_name: "Ole", last_name: "Olesen",
            about_me: "Jeg er bilmekanikker og jeg kan reperaner bilen din. Jeg tar 200kr i timen.",
            email: "ole@gmail.com",
            password: "123456", password_confirmation: "123456", phone_number: "22222333")
