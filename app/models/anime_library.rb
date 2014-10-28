class AnimeLibrary < ActiveRecord::Base
belongs_to :user
belongs_to :anime
end
