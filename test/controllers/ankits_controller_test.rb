require 'test_helper'

class AnkitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ankit = ankits(:one)
  end

  test "should get index" do
    get ankits_url
    assert_response :success
  end

  test "should get new" do
    get new_ankit_url
    assert_response :success
  end

  test "should create ankit" do
    assert_difference('Ankit.count') do
      post ankits_url, params: { ankit: { age: @ankit.age, email: @ankit.email, name: @ankit.name } }
    end

    assert_redirected_to ankit_url(Ankit.last)
  end

  test "should show ankit" do
    get ankit_url(@ankit)
    assert_response :success
  end

  test "should get edit" do
    get edit_ankit_url(@ankit)
    assert_response :success
  end

  test "should update ankit" do
    patch ankit_url(@ankit), params: { ankit: { age: @ankit.age, email: @ankit.email, name: @ankit.name } }
    assert_redirected_to ankit_url(@ankit)
  end

  test "should destroy ankit" do
    assert_difference('Ankit.count', -1) do
      delete ankit_url(@ankit)
    end

    assert_redirected_to ankits_url
  end
end
