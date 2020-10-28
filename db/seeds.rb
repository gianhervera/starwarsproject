require "csv"

Cast.delete_all
World.delete_all
Page.delete_all

filename = Rails.root.join("db/worlds.csv")

puts filename

csv_data = File.read(filename)
planets = CSV.parse(csv_data, headers: true, encoding: "utf-8")

planets.each do |m|
  planet_name = World.find_or_create_by(name: m["name"])
  if planet_name&.valid?


    puts "Invalid planet #{m['name']}"
  else
    puts "Invalid planet #{m['planet_name']} for planet #{m['name']}."
  end
end

puts "Created #{World.count} planets"