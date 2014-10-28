class Question < ActiveRecord::Base
belongs_to :anime
has_many :quiz_stages
has_many :quizzes, through: :quiz_stages
end
