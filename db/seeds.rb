# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

20.times do
  a = Supplier.new({
    name: Faker::Name.name,
    contact_cel: Faker::Number.number(digits: 10),
    contact_name: Faker::Name.name,
    nit: "#{Faker::Number.number(digits: 9)}-#{Faker::Number.number(digits: 1)}",
    bank_id: Faker::Number.rand_in_range(1,4),
    account_number: Faker::Number.number(digits: 11)
                  })
  p a.save
end