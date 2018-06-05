require 'test_helper'

class UsuarioControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get usuario_login_url
    assert_response :success
  end

  test "should get registro" do
    get usuario_registro_url
    assert_response :success
  end

end
