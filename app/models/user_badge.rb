class UserBadge < ApplicationRecord
  belongs_to :user
  belongs_to :badge

  scope :by_rules, -> (user, badge) { where(user: user, badge: badge) }
end
