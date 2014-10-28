class Anime < ActiveRecord::Base
has_many :anime_libraries
has_many :users, through: :anime_libraries
has_many :questions
end
