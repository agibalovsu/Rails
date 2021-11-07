class Answer < ApplicationRecord
  belongs_to :question
  
  scope :correct, -> { where(correct: true) }

  validates :body, presence: true

  def count_of_answers
    errors.add(:answer, 'number is too much') if question.answers.count > 4 
  end
end
