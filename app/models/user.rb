class User < ApplicationRecord
  has_many :test_passages
  has_many :test, through: :test_passages
end
