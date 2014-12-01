# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach(File.join(Rails.root, 'db/japanese.csv')) do |row|
  anime_id = row[0].to_i
  japanese = row[1]
  english = row[2]
  Question.create( anime_id: anime_id, japanese: japanese, english: english)
end

 animes = Anime.create([{name: 'FLCL Episode 1'}, {name: 'FLCL Episode 2'}])


