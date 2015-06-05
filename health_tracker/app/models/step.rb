class Step < ActiveRecord::Base

  def self.daily_total
    today = self.all.select{|s| s.date.day == DateTime.now.day}
    today.reduce(0){|sum, t| sum + t.step_number}
  end

  def self.number_of_miles
    (self.daily_total / 2112).round(2)
  end
end
