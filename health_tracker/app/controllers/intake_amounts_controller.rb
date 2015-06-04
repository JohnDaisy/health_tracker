class IntakeAmountsController < ApplicationController
  before_action :set_intake_amount, only: [:show, :edit, :update, :destroy]

  # GET /intake_amounts
  # GET /intake_amounts.json
  def index
    @intake_amounts = IntakeAmount.all
  end

  # GET /intake_amounts/1
  # GET /intake_amounts/1.json
  def show
  end

  # GET /intake_amounts/new
  def new
    @intake_amount = IntakeAmount.new
  end

  # GET /intake_amounts/1/edit
  def edit
  end

  # POST /intake_amounts
  # POST /intake_amounts.json
  def create
    @intake_amount = IntakeAmount.new(intake_amount_params)

    respond_to do |format|
      if @intake_amount.save
        format.html { redirect_to @intake_amount, notice: 'Intake amount was successfully created.' }
        format.json { render :show, status: :created, location: @intake_amount }
      else
        format.html { render :new }
        format.json { render json: @intake_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intake_amounts/1
  # PATCH/PUT /intake_amounts/1.json
  def update
    respond_to do |format|
      if @intake_amount.update(intake_amount_params)
        format.html { redirect_to @intake_amount, notice: 'Intake amount was successfully updated.' }
        format.json { render :show, status: :ok, location: @intake_amount }
      else
        format.html { render :edit }
        format.json { render json: @intake_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intake_amounts/1
  # DELETE /intake_amounts/1.json
  def destroy
    @intake_amount.destroy
    respond_to do |format|
      format.html { redirect_to intake_amounts_url, notice: 'Intake amount was successfully destroyed.' }
      format.json { head :no_content }
    end
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
