require 'test_helper'

class ChallengersControllerTest < ActionDispatch::IntegrationTest
  test "should get accept" do
    get challengers_accept_url
    assert_response :success
  end

  test "should get decline" do
    get challengers_decline_url
    assert_response :success
  end

  test "should get abort" do
    get challengers_abort_url
    assert_response :success
  end

end
