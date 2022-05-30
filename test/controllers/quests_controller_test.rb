require "test_helper"

class QuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quests_index_url
    assert_response :success
  end
end
