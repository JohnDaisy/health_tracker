require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "get_last_weight" do
    weights = Weight.all.sort {|a, b| a.date <=> b.date}
    assert_equal 130, weights.last.weight
  end
end
