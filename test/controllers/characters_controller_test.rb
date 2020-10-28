require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get characters_hello_url
    assert_response :success
  end

end
