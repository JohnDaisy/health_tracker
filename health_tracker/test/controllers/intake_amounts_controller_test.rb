require 'test_helper'

class IntakeAmountsControllerTest < ActionController::TestCase
  setup do
    @intake_amount = intake_amounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intake_amounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intake_amount" do
    assert_difference('IntakeAmount.count') do
      post :create, intake_amount: { date: @intake_amount.date, intake_amount: @intake_amount.intake_amount }
    end

    assert_redirected_to intake_amount_path(assigns(:intake_amount))
  end

  test "should show intake_amount" do
    get :show, id: @intake_amount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intake_amount
    assert_response :success
  end

  test "should update intake_amount" do
    patch :update, id: @intake_amount, intake_amount: { date: @intake_amount.date, intake_amount: @intake_amount.intake_amount }
    assert_redirected_to intake_amount_path(assigns(:intake_amount))
  end

  test "should destroy intake_amount" do
    assert_difference('IntakeAmount.count', -1) do
      delete :destroy, id: @intake_amount
    end

    assert_redirected_to intake_amounts_path
  end
end
