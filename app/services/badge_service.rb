class BadgeService

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @test = test_passage.test
    @test_passages = @user.test_passages
  end

  def call
    Badge.select { |badge| send("#{badge.rule}?", badge) }
  end

  private

  def success_all_in_category?(badge)
    return unless @test.category.title == badge.parameter 
    user_badge = UserBadge.by_rules(@user, badge).last
    category_tests = Test.tests_by_category(badge.parameter)
    passed_tests = @test_passages.test_passage_passed.joins(:test).where("tests.category.title": @test.category.title)
    category_tests.pluck(:id).sort == passed_tests.pluck(:test_id).uniq.sort
  end

  def success_all_level?(badge)
    return unless @test.level == badge.parameter.to_i 
    user_badge = UserBadge.by_rules(@user, badge).last
    level_tests = Test.by_level(badge.parameter.to_i)
    passed_tests = @test_passages.test_passage_passed.joins(:test).where("tests.level": @test.level)
    level_tests.pluck(:id).sort == passed_tests.pluck(:test_id).uniq.sort
  end

  def success_first_try?(badge)
    TestPassage.where(user: @test_passage.user, test: @test_passage.test).count == 1
  end
end
