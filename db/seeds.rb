require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

13.times do
  restaurant = Restaurant.create(
    name: ["The #{Faker::Verb.ing_form.capitalize} #{Faker::Food.ingredient}", Faker::Restaurant.name].sample,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "\"#{restaurant.name}\" added"
end

puts "#{Restaurant.all.size} restaurants added to db"
