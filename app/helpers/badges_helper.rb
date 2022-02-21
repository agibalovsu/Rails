module BadgesHelper
  def first_try
    Badge::Rules[0]
  end

  def all_level
    Badge::Rules[1]
  end

  def all_in_category
    Badge::Rules[2]
  end
end
