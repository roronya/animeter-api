require 'test_helper'

class WatchingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watching = watchings(:one)
  end

  test "should get index" do
    get watchings_url, as: :json
    assert_response :success
  end

  test "should create watching" do
    assert_difference('Watching.count') do
      post watchings_url, params: { watching: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show watching" do
    get watching_url(@watching), as: :json
    assert_response :success
  end

  test "should update watching" do
    patch watching_url(@watching), params: { watching: {  } }, as: :json
    assert_response 200
  end

  test "should destroy watching" do
    assert_difference('Watching.count', -1) do
      delete watching_url(@watching), as: :json
    end

    assert_response 204
  end
end
