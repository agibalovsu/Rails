class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :authors_tests, class_name: 'Test', foreign_key: :user_id
  

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end


  
  private

  def tests_by_level(level)
    self.tests.level(level)
  end
end
