require 'test_helper'

class AgendaesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agendaes_index_url
    assert_response :success
  end

end
