require 'test_helper'

class TowatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @towatch = towatches(:one)
  end

  test "should get index" do
    get towatches_url, as: :json
    assert_response :success
  end

  test "should create towatch" do
    assert_difference('Towatch.count') do
      post towatches_url, params: { towatch: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show towatch" do
    get towatch_url(@towatch), as: :json
    assert_response :success
  end

  test "should update towatch" do
    patch towatch_url(@towatch), params: { towatch: {  } }, as: :json
    assert_response 200
  end

  test "should destroy towatch" do
    assert_difference('Towatch.count', -1) do
      delete towatch_url(@towatch), as: :json
    end

    assert_response 204
  end
end
