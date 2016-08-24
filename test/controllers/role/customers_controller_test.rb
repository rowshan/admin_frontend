require 'test_helper'

class Role::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get role_customers_index_url
    assert_response :success
  end

  test "should get show" do
    get role_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get role_customers_edit_url
    assert_response :success
  end

  test "should get create" do
    get role_customers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get role_customers_destroy_url
    assert_response :success
  end

  test "should get update" do
    get role_customers_update_url
    assert_response :success
  end

end
