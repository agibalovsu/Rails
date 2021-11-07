class Test < ApplicationRecord
  has_many :questions
  has_many :test_passages
  has_many :users, through: :test_passages
  belongs_to :category
  belongs_to :author, class_name: 'User'
  
  #def self.tests_by_category(category)
  # Test.joins('join categories on categories.id = tests.category_id').where(categories: { title: category }).order(title: :desc).pluck(:title)
  #end
  
  scope :by_category, -> (category) { where(categories: { title: category}).order(title: :desc).pluck(:title) }
  
  scope :level_easy, -> { where('level in ?', (0..1)) }
  scope :level_medium, -> { where('level in ?', (2..4)) }
  scope :level_hard, -> { where('level in ?', (5..FLOAT::INFINITY)) }

  validates :title, presence: true
                    uniqueness: true
  validates :level, numericality: { only_integer: true }
                    uniqueness: true
  def validate_above_zero
    errors.add(:level) if level.to_i < 0
  end
end 

