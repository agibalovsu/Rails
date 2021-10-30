class User < ApplicationRecord
  def tests_by_level(level)
    self.tests.where("level = ?" level)
  end
end
