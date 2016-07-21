require 'test_helper'

class Dashboard::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_dashboards_index_url
    assert_response :success
  end

end
