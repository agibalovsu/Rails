class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id, optional: true
  has_many :questions, dependent: :nullify
  has_many :test_passages
  has_many :users, through: :test_passages
  
  scope :tests_by_category, -> (category) { joins(:category).where(categories: { title: category }) }
  
  scope :level_easy, -> { where('level in ?', (0..1)) }
  scope :level_medium, -> { where('level in ?', (2..4)) }
  scope :level_hard, -> { where('level in ?', (5..FLOAT::INFINITY)) }

  validates :title, presence: true
  validates :level, numericality: { only_integer: true }     
  validates :title, uniqueness: {scope: :level, message: 'Title and level - unique'}
  
  validate :validate_above_zero, on: %i[create update]

  private

  def self.sort_by_category(category)
    tests_by_category(category).order(title: :desc).pluck(:title)
  end
  
  def validate_above_zero
    errors.add(:level) if level.to_i < 0
  end
end 

