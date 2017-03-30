require 'test_helper'

class StaticControllerControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @baseTitle = "RoR App"
  end
  
  test "should test root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get static_controller_home_url
    assert_response :success
    assert_select "title", "Home | #@baseTitle"
  end

  test "should get help" do
    get static_controller_help_url
    assert_response :success
        assert_select "title", "Help | #@baseTitle"
  end
  
  test "should get about"  do
    get static_controller_about_url
    assert_response :success
        assert_select "title", "About | #@baseTitle"
  end

end
