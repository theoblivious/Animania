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
# Questions_anime1 =Question.create([
#                                     {japanese:"konnichiwa", english: "hello", anime_id: 1},
#                                     {japanese:"Korosu", english: "kill", anime_id: 1}


# ])

# Questions_anime_2 =Question.create([
#                                      {japanese:"Chimatsuri", english: "blood bath", anime_id: 2},
#                                      {japanese:"Genki Desuka?", english: "Are you well?", anime_id: 2}



# ])






# t.string   "email",                  default: "", null: false
#     t.string   "encrypted_password",     default: "", null: false
#     t.string   "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer  "sign_in_count",          default: 0,  null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
