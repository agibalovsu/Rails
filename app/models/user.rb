class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins('join users on users.test_id = tests.id').where(tests: { level: level }).pluck(:title)
  end
end
