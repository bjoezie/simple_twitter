require 'test_helper'

class TimePostedDatetimesControllerTest < ActionController::TestCase
  setup do
    @time_posted_datetime = time_posted_datetimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_posted_datetimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_posted_datetime" do
    assert_difference('TimePostedDatetime.count') do
      post :create, time_posted_datetime: { author,: @time_posted_datetime.author,, content: @time_posted_datetime.content, user_id: @time_posted_datetime.user_id }
    end

    assert_redirected_to time_posted_datetime_path(assigns(:time_posted_datetime))
  end

  test "should show time_posted_datetime" do
    get :show, id: @time_posted_datetime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_posted_datetime
    assert_response :success
  end

  test "should update time_posted_datetime" do
    patch :update, id: @time_posted_datetime, time_posted_datetime: { author,: @time_posted_datetime.author,, content: @time_posted_datetime.content, user_id: @time_posted_datetime.user_id }
    assert_redirected_to time_posted_datetime_path(assigns(:time_posted_datetime))
  end

  test "should destroy time_posted_datetime" do
    assert_difference('TimePostedDatetime.count', -1) do
      delete :destroy, id: @time_posted_datetime
    end

    assert_redirected_to time_posted_datetimes_path
  end
end
