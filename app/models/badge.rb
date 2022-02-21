class Badge < ApplicationRecord

  Rules = %w[success_first_try success_all_level success_all_in_category].freeze

  has_many :user_badges, dependent: :destroy
  has_many :users, through: :user_badges

  validates :name, :image, presence: true
  validates :rule, inclusion: { in: Rules }
end
