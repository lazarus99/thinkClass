class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :answers
  validates :question_text, presence: true
end
