require "test_helper"

class Users::DashBoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_dash_boards_index_url
    assert_response :success
  end
end
