class Question < ActiveRecord::Base
has_many :answers
has_many :samurais, through: :answers
end
