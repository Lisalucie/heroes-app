require "test_helper"

class GuildChoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get guild_choices_create_url
    assert_response :success
  end
end
