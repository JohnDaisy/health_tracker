require 'test_helper'

class IntakeAmountTest < ActiveSupport::TestCase
  test "intake_amount total" do
    assert 1400, IntakeAmount.daily_intake
  end
end
