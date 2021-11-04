class Test < ApplicationRecord
  has_many :questions
  has_many :test_passages
  has_many :users, through: :test_passages
  belongs_to :category
  belongs_to :author, class_name: 'User'
  
  def self.tests_by_category(category)
    Test.joins('join categories on categories.id = tests.category_id').where(categories: { title: category }).order(title: :desc).pluck(:title)
  end
end

