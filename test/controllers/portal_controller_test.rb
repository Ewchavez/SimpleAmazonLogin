require 'test_helper'

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get portal_inicio_url
    assert_response :success
  end

  test "should get productos" do
    get portal_productos_url
    assert_response :success
  end

end
