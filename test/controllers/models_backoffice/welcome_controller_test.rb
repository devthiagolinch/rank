require 'test_helper'

class ModelsBackoffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get models_backoffice_welcome_index_url
    assert_response :success
  end

end
