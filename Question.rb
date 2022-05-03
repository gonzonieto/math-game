class Question
  def initialize
    @nums = Array.new(2) { rand(1..20) }
    @answer = @nums.sum
  end

  def answer?(guess)
    guess == @answer
  end

  def to_s
    "what is #{@nums[0]} + #{@nums[1]} ? "
  end
end
