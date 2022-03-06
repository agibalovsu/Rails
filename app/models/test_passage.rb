class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true, dependent: :destroy

  before_validation :before_validation_set_question

  scope :passed, -> { where(current_question: nil ) }

  def completed?
    current_question.nil? && time_out?
  end

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids) && answer_ids.present?
    save!
  end

  def number_of_question
    test.questions.index(current_question) + 1
  end

  def result
    (correct_questions.to_f/test.questions.count*100).to_i
  end

  def test_success?
    result >= 85
  end

  def count_of_questions
    test.questions.count
  end

  def time_out?
    (test.timer - (Time.now - created_at)).to_i <= 0
  end

  def time_left(test_passage)
    test_passage.test.timer - (Time.now - test_passage.created_at).to_i if test_passage.test.timer > 0
  end

  private

  def before_validation_set_question
    self.current_question = if new_record?
      test.questions.order(:id).first if test.present?
    else
      test.questions.order(:id).where('id > ?', current_question.id).first
    end
  end

  def correct_answer?(answer_ids)
    return if answer_ids.nil?
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end
end

 



  





  
