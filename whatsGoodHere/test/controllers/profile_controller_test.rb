require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profile_new_url
    assert_response :success
  end

  test "should get edit" do
    get profile_edit_url
    assert_response :success
  end

  test "should get update" do
    get profile_update_url
    assert_response :success
  end

  test "should get delete" do
    get profile_delete_url
    assert_response :success
  end

end
