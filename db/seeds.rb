require 'faker'
def x
rand(50..100)
end

5.times do
  flats = Flat.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, price_per_night: "#{x}", number_of_guests: "#{x}" )
  flats.save
end


