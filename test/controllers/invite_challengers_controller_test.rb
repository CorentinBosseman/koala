require 'test_helper'

class InviteChallengersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get invite_challengers_show_url
    assert_response :success
  end

end
