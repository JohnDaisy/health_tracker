class Step < ActiveRecord::Base

  def self.total
    self.all.reduce(0){|sum, t| sum + t.step_number}
  end

  def self.number_of_miles
    today = self.all.select{|s| s.date.day == DateTime.now.day}
    (today.reduce(0){|sum, s| sum + s.step_number} / 2112).round(2)
  end
end
