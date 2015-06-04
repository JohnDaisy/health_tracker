require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "get total" do
    assert_equal 300, Step.total
  end
end
