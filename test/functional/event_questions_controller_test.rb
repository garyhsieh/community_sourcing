require 'test_helper'

class EventQuestionsControllerTest < ActionController::TestCase
  setup do
    @event_question = event_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_question" do
    assert_difference('EventQuestion.count') do
      post :create, event_question: { event_id: @event_question.event_id, prompt: @event_question.prompt }
    end

    assert_redirected_to event_question_path(assigns(:event_question))
  end

  test "should show event_question" do
    get :show, id: @event_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_question
    assert_response :success
  end

  test "should update event_question" do
    put :update, id: @event_question, event_question: { event_id: @event_question.event_id, prompt: @event_question.prompt }
    assert_redirected_to event_question_path(assigns(:event_question))
  end

  test "should destroy event_question" do
    assert_difference('EventQuestion.count', -1) do
      delete :destroy, id: @event_question
    end

    assert_redirected_to event_questions_path
  end
end
