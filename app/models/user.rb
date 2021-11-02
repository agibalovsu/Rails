class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins('join test_passages on test_passages.test_id = test_passages.user_id').where(tests: { level: level }).pluck(:title)
  end
end
