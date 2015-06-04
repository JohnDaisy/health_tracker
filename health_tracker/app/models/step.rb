class Step < ActiveRecord::Base

  def self.total
    self.all.reduce(0){|sum, t| sum + t.step_number}
  end
end
