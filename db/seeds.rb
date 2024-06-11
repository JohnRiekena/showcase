# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

ap 'Creating Books'
Book.create(title: 'Seeded Book', page_count: 50)

# Example of Single Table Inheritance
ap 'Creating Desserts'
# Desserts
5.times do
  Cake.create(
    name: Faker::Dessert.flavor,
    score: Random.rand(5..100),
  )
end

ap 'Creating Pies'
Pie.create(
  name: 'Cherry',
  score: Random.rand(5..100)
)

Pie.create(
  name: 'Rhubarb',
  score: Random.rand(5..100)
)

ap 'Creating Musicians'
# Instrument Example
5.times do
  Musician.create name: Faker::Music::Phish.musician
end

ap 'Creating Surgeons'
5.times do
  Surgeon.create name: "Dr. #{Faker::TvShows::TheOffice.character}"
end

# Example of Polymorphic Associations
ap 'Creating Instruments'
music_instruments = %w[Sax Guitar Trumpet Drums Bass]
surgeon_instruments = %w[Forceps Scissors Clamps Scalpel]

Musician.all.each do |musician|
  instruments = music_instruments.sample(2)
  musician.instruments = instruments.map { |instrument| Instrument.new(name: instrument) }
end

Surgeon.all.each do |surgeon|
  instruments = surgeon_instruments.sample(2)
  surgeon.instruments = instruments.map { |instrument| Instrument.new(name: instrument) }
end