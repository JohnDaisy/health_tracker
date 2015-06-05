class ExerciseTypesController < ApplicationController
  before_action :set_intake_amount, only: [:show, :edit, :update, :destroy]

  # GET /intake_amounts
  # GET /intake_amounts.json
  def index
    @types = ExerciseType.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intake_amount
      @intake_amount = IntakeAmount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intake_amount_params
      params.require(:intake_amount).permit(:intake_amount, :date)
    end
end
