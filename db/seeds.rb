# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def seed_standards(name)
  Standard.find_or_create_by(name: name)
  print "."
end

puts "#Seeding Standards"
["1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th", "10th"].each do |standard|
  seed_standards(standard)
end
puts "Done."


def seed_sections(name, standard_id)
  @standard = Standard.find(standard_id)
  Standard.Section.find_or_create_by(name: name, standard_id: standard_id)
  print "."
end

puts "#Seeding Sections"
Standard.all.each do |id|
  ["A", "B", "C", "D"].each do |section|
    seed_sections(section,id)
  end
end
puts "Done."
