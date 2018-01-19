class Answer < ActiveRecord::Base
belongs_to :question
belongs_to :samurai

#validation
 validates_presence_of :samurai_id, presence: true



end
