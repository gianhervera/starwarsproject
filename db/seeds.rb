require "csv"

Planet.delete_all
HomeWorld.delete_all

filename = Rails.root.join("db/planets.csv")

puts "Loading files from CSV file: #{filename}"

csv_data = File.read(filename)

planets = CSV.parse(csv_data, headers: true, encoding: "utf-8")

planets.each do |m|
  home_world = HomeWorld.find_or_create_by(name: m["name"])

  if home_world&.valid?
    planet = home_world.planet.create(
    planet_name: m["name"],
    rotation_period: m["rotation_period"],
    orbital_period: m["orbital_period"],
    diameter: m["diameter"],
    gravity: m["gravity"],
    surface_water: m["surface_water"],
    population: m["population"]
    )
    puts "Invalid planet #{m["name"]}" unless planet.valid?
  else
    puts "Invalid planet name #{m["name"]} for planet #{m['planet_name']}. "
  end
end


puts "Created #{HomeWorld.count} planets"
puts "Created #{Planet.count} planets"

filenames = Rails.root.join("db/characters.csv")

puts "Loading files from CSV file: #{filenames}"

csv_data = File.read(filenames)

characters = CSV.parse(csv_data, headers: true, encoding: "utf-8")

characters.each do |m|
  characterinfo = Characterinfo.find_or_create_by(name: m["name"])

  if characterinfo&.valid?
    cast = characterinfo.cast.create(
    name: m["name"],
    height: m["height"],
    mass: m["mass"],
    hair_color: m["hair_color"],
    skin_color: m["skin_color"],
    eye_color: m["eye_color"],
    birth_year: m["birth_year"],
    gender: m["gender"],
    homeworld: m["homeworld"],
    species: m["species"],
    )
    puts "Invalid character #{m["name"]}" unless cast.valid?
  else
    puts "Invalid character name #{m["name"]} for character #{m['name']}. "
  end
end


puts "Created #{Characterinfo.count} characters"
