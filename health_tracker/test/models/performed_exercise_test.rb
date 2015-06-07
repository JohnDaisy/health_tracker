require 'test_helper'

class PerformedExerciseTest < ActiveSupport::TestCase
  test "total daily burn amount" do
    assert_equal 150, PerformedExercise.daily_burn_amount.to_f
  end
end
