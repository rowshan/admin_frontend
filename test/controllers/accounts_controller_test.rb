require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accounts_index_url
    assert_response :success
  end

  test "should get create" do
    get accounts_create_url
    assert_response :success
  end

  test "should get update" do
    get accounts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get accounts_destroy_url
    assert_response :success
  end

end
