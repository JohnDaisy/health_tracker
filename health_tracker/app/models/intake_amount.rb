class IntakeAmount < ActiveRecord::Base

  def total_intake_today
    today = self.all.select{|s| s.date.day == DateTime.now.day}
    today.reduce(0){|sum, t| sum + t.intake_amount}
  end


  # def net_calories
  #   (self.all.reduce(0){|sum, t| sum + i.intake_amount}) - calories_burned
  # end

end
