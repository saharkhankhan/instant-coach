require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name:string" do
    get users_first_name:string_url
    assert_response :success
  end

  test "should get last_name:string" do
    get users_last_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get users_email:string_url
    assert_response :success
  end

  test "should get coach:boolean" do
    get users_coach:boolean_url
    assert_response :success
  end

  test "should get username:string" do
    get users_username:string_url
    assert_response :success
  end

  test "should get password:string" do
    get users_password:string_url
    assert_response :success
  end

  test "should get address:string" do
    get users_address:string_url
    assert_response :success
  end

  test "should get bio:text" do
    get users_bio:text_url
    assert_response :success
  end

end
