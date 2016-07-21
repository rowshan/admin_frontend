require 'test_helper'

class MyAccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get my_accounts_create_url
    assert_response :success
  end

  test "should get update" do
    get my_accounts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get my_accounts_destroy_url
    assert_response :success
  end

end
