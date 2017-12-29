require 'test_helper'

class EnvInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get env_info_index_url
    assert_response :success
  end

end
