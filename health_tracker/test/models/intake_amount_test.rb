require 'test_helper'

class IntakeAmountTest < ActiveSupport::TestCase
  test "intake_amount total" do
    assert_equal 900, IntakeAmount.daily_intake.to_f
  end

  test "net calories today" do
    assert_equal 750, IntakeAmount.net_calories
  end

end
