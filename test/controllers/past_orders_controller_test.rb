require 'test_helper'

class PastOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get past_orders_new_url
    assert_response :success
  end

  test "should get create" do
    get past_orders_create_url
    assert_response :success
  end

  test "should get index" do
    get past_orders_index_url
    assert_response :success
  end

end
