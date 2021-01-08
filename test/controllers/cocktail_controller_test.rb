require 'test_helper'

class CocktailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cocktail_index_url
    assert_response :success
  end

  test "should get show" do
    get cocktail_show_url
    assert_response :success
  end

  test "should get new" do
    get cocktail_new_url
    assert_response :success
  end

  test "should get create" do
    get cocktail_create_url
    assert_response :success
  end

end
