require 'test_helper'

class MysqlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mysql_index_url
    assert_response :success
  end

  test "should get new" do
    get mysql_new_url
    assert_response :success
  end

  test "should get edit" do
    get mysql_edit_url
    assert_response :success
  end

end
