require 'test_helper'

class IntakeAmountTest < ActiveSupport::TestCase
  test "intake_amount total" do
    assert_equal 1400, IntakeAmount.daily_intake
  end
end
