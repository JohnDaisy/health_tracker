class IntakeAmount < ActiveRecord::Base

  def self.daily_intake
    today = self.all.select{|s| s.date.day == DateTime.now.day}
    today.reduce(0){|sum, s| sum + s.intake_amount}
  end

  def self.net_calories
    (self.daily_intake - PerformedExercise.daily_burn_amount).to_f
  end

end
