require 'test_helper'

class QuizStagesControllerTest < ActionController::TestCase
  setup do
    @quiz_stage = quiz_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quiz_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiz_stage" do
    assert_difference('QuizStage.count') do
      post :create, quiz_stage: { questions_id: @quiz_stage.questions_id, quiz_id: @quiz_stage.quiz_id }
    end

    assert_redirected_to quiz_stage_path(assigns(:quiz_stage))
  end

  test "should show quiz_stage" do
    get :show, id: @quiz_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiz_stage
    assert_response :success
  end

  test "should update quiz_stage" do
    patch :update, id: @quiz_stage, quiz_stage: { questions_id: @quiz_stage.questions_id, quiz_id: @quiz_stage.quiz_id }
    assert_redirected_to quiz_stage_path(assigns(:quiz_stage))
  end

  test "should destroy quiz_stage" do
    assert_difference('QuizStage.count', -1) do
      delete :destroy, id: @quiz_stage
    end

    assert_redirected_to quiz_stages_path
  end
end
