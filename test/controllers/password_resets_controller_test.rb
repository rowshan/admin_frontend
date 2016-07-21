require 'test_helper'

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get password_resets_create_url
    assert_response :success
  end

  test "should get update" do
    get password_resets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get password_resets_destroy_url
    assert_response :success
  end

end
