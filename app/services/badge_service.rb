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
    return unless @test.category_id == badge.parameter.to_i && @test_passage.test_success?
    user_badge = UserBadge.by_rules(@user, badge).last
    @test_passages = @test_passages.where(created_at: user_badge.created_at..Time.current.utc) if user_badge
    category_tests = Test.by_category_id(badge.parameter.to_i)
    passed_tests = @test_passages.test_passage_passed.joins(:test).where("tests.category_id": @test.category_id)
    category_tests.pluck(:id).sort == passed_tests.pluck(:test_id).uniq.sort
  end

  def success_all_level?(badge)
    return unless @test.level == badge.parameter.to_i && @test_passage.test_success?
    user_badge = UserBadge.by_rules(@user, badge).last
    @test_passages = @test_passages.where(created_at: user_badge.created_at..Time.current.utc) if user_badge
    level_tests = Test.by_level(badge.parameter.to_i)
    passed_tests = @test_passages.test_passage_passed.joins(:test).where("tests.level": @test.level)
    level_tests.pluck(:id).sort == passed_tests.pluck(:test_id).uniq.sort
  end

  def success_first_try?(badge)
    return unless @test_passage.test_success?
    @user.tests.where(id: @test.id).count == 1
  end
end
