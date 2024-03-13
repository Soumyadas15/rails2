# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
5.times do
    Department.create!(
        name: Faker::Company.unique.industry
    )
end

Department.all.each do |department|
    10.times do
      department.employees.create!(
        name: Faker::Name.unique.name,
        age: Faker::Number.between(from: 21, to: 65),
        salary: Faker::Number.decimal(l_digits: 4, r_digits: 2)
      )
    end
end