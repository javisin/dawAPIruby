require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get login" do
    get admin_login_url
    assert_response :success
  end

  test "should get newUser" do
    get admin_newUser_url
    assert_response :success
  end

  test "should get newProduct" do
    get admin_newProduct_url
    assert_response :success
  end

  test "should get updateUser" do
    get admin_updateUser_url
    assert_response :success
  end

  test "should get updateProduct" do
    get admin_updateProduct_url
    assert_response :success
  end

  test "should get destroyUser" do
    get admin_destroyUser_url
    assert_response :success
  end

  test "should get destroyProduct" do
    get admin_destroyProduct_url
    assert_response :success
  end

  test "should get showUser" do
    get admin_showUser_url
    assert_response :success
  end

  test "should get showProduct" do
    get admin_showProduct_url
    assert_response :success
  end

end
