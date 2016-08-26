require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invoices_index_url
    assert_response :success
  end

  test "should get show" do
    get invoices_show_url
    assert_response :success
  end

  test "should get edit" do
    get invoices_edit_url
    assert_response :success
  end

  test "should get new" do
    get invoices_new_url
    assert_response :success
  end

  test "should get create" do
    get invoices_create_url
    assert_response :success
  end

  test "should get update" do
    get invoices_update_url
    assert_response :success
  end

  test "should get delete" do
    get invoices_delete_url
    assert_response :success
  end

end
