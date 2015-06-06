class PerformedExercise < ActiveRecord::Base
  belongs_to :exercise_type

  def get_type
    type = ExerciseType.find_by_id(self.exercise_type_id)
    type.name
  end

  def self.daily_burn_amount
    today = self.all.select{|p| p.date.day == DateTime.now.day}
    today.reduce(0){|sum, p| sum + p.burn_amount}
  end

end
