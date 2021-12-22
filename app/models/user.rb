require 'uri'

class User < ApplicationRecord
  
  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :trackable, 
         :rememberable, 
         :validatable,
         :confirmable
 
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :authors_tests, class_name: 'Test', foreign_key: :author_id

  validates :email, presence: true,
                    uniqueness: true,
                    format: URI::DEFAULT_PARSER.regexp[:ABS]

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  def admin?
    is_a?(Admin)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def tests_by_level(level)
    self.tests.level(level)
  end
end

