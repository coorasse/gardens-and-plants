# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
    garden = Garden.new(
    name: Faker::FunnyName.name,
    img_url: Faker::LoremFlickr.image(search_terms: ['gardens'])
    )
    garden.save!
    10.times do
        plant = Plant.new(
        name: Faker::FunnyName.name,
        img_url: Faker::LoremFlickr.image(search_terms: ['plants']),
        garden: garden
        )
        plant.save!
    end
end


