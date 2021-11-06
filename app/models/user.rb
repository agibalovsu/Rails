class User < ApplicationRecord
  has_many :test_passages
  has_many :test, through: :test_passages
  has_many :authors_tests, class_name: 'Test', foreign_key: 'author_id'
  
  def tests_by_level(level)
    Test.joins('join test_passages on test_passages.test_id = test_passages.user_id').where(tests: { level: level }).pluck(:title)
  end
end
