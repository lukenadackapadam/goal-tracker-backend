# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  { first_name: "Squidward", last_name: "Ward", password_digest: "password", email: "squid@example.com" },
  { first_name: "Spongebob", last_name: "Square", password_digest: "password", email: "sponge@example.com" },
  { first_name: "Patrick", last_name: "Star", password_digest: "password", email: "pat@example.com" },
])

Goal.create!([
  { user_id: 2, description: "Work work work!", goal_type: "Daily", completed: false },
  { user_id: 2, description: "Play with Patrick!", goal_type: "Weekly", completed: false },
  { user_id: 1, description: "Practice clarinet.", goal_type: "Daily", completed: true },
  { user_id: 3, description: "Play with Spongebob!", goal_type: "Daily", completed: true },
])
