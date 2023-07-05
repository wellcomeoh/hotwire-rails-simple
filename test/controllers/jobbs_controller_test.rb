require "test_helper"

class JobbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobb = jobbs(:one)
  end

  test "should get index" do
    get jobbs_url
    assert_response :success
  end

  test "should get new" do
    get new_jobb_url
    assert_response :success
  end

  test "should create jobb" do
    assert_difference('Jobb.count') do
      post jobbs_url, params: { jobb: { description: @jobb.description, title: @jobb.title } }
    end

    assert_redirected_to jobb_url(Jobb.last)
  end

  test "should show jobb" do
    get jobb_url(@jobb)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobb_url(@jobb)
    assert_response :success
  end

  test "should update jobb" do
    patch jobb_url(@jobb), params: { jobb: { description: @jobb.description, title: @jobb.title } }
    assert_redirected_to jobb_url(@jobb)
  end

  test "should destroy jobb" do
    assert_difference('Jobb.count', -1) do
      delete jobb_url(@jobb)
    end

    assert_redirected_to jobbs_url
  end
end
