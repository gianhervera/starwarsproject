require "csv"


HomeWorld.delete_all
Terrain.delete_all


filename = Rails.root.join("db/worlds.csv")

puts filename

csv_data = File.read(filename)
worlds = CSV.parse(csv_data, headers: true, encoding: "utf-8")

worlds.each do |m|
  terrain = Terrain.find_or_create_by(name: m["terrain"])
  if terrain&.valid?
#

  else
    puts "Invalid planet #{m['name']} for planet #{m['name']}."
  end
end

puts "Created #{HomeWorld.count} worlds"