require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'nav a', minimum: 4
    assert_select 'h1', "Your Pragmatic Catalog"
    assert_select 'h2', 2
    assert_select 'p', 'MyText'
  end
end
