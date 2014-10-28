class Quiz < ActiveRecord::Base
has_many :quiz_stages
has_many :questions, through: :quiz_stages
end
