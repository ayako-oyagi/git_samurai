class Samurai < ActiveRecord::Base
  has_attached_file :portrait,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :portrait,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

  has_many :answers
  has_many :questions_answer, through: :answers, source: :question

end
