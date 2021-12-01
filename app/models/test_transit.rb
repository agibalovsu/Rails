class TestTransit < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question'

  before_validation :before_validation_set_first_question, on: :create
  before_save :before_save_set_next_question, unless: :new_record?

  SUCCESS_POINTS = 85

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids) && answer_ids.present?
    save
  end

  def number_of_question
    test.questions.index(current_question) + 1
  end

  def result
    (correct_questions.to_f/test.questions.count*100).to_i
  end

  def test_success?
    result >= SUCCESS_POINTS
  end

  def count_of_questions
    test.questions.count
  end
  
  private

  def before_validation_set_first_question
    self.current_question = test.questions.order(:id).first if test.present?
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end

  def before_save_set_next_question
    self.current_question = test.questions.order(:id).where('id > ?', current_question.id).first
  end
end

