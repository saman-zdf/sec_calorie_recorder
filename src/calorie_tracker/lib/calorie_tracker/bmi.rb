class Bmi
  attr_reader :weight, :height
  def initialize(weight, height)
    @weight = weight
    @height = height
  end

  def get_bmi
    total_bmi = (@weight / (@height * @height))
    return total_bmi
  end
end