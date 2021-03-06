class Quiz < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers, :through => :questions
  accepts_nested_attributes_for :questions, :answers
end
