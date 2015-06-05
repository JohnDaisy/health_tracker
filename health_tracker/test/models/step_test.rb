require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "get total" do
    assert_equal 4224, Step.total
  end

  test "miles stepped" do
    assert_equal 2, Step.number_of_miles
  end
end
