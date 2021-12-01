class User < ApplicationRecord
  has_many :test_transits
  has_many :tests, through: :test_transits
  has_many :authors_tests, class_name: 'Test', foreign_key: :user_id
  
  #def tests_by_level(level)
  #  Test.joins('join test_transits on test_transits.test_id = test_transits.user_id').where(tests: { level: level }).pluck(:title)
  #end

  def test_transit(test)
    test_transits.order(id: :desc).find_by(test_id: test.id)
  end


  
  private

  def tests_by_level(level)
    self.tests.level(level)
  end
end
