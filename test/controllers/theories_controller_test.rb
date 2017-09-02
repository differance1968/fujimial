require 'test_helper'

class TheoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theory = theories(:one)
  end

  test "should get index" do
    get theories_url
    assert_response :success
  end

  test "should get new" do
    get new_theory_url
    assert_response :success
  end

  test "should create theory" do
    assert_difference('Theory.count') do
      post theories_url, params: { theory: { content: @theory.content, file: @theory.file, picture: @theory.picture, title: @theory.title } }
    end

    assert_redirected_to theory_url(Theory.last)
  end

  test "should show theory" do
    get theory_url(@theory)
    assert_response :success
  end

  test "should get edit" do
    get edit_theory_url(@theory)
    assert_response :success
  end

  test "should update theory" do
    patch theory_url(@theory), params: { theory: { content: @theory.content, file: @theory.file, picture: @theory.picture, title: @theory.title } }
    assert_redirected_to theory_url(@theory)
  end

  test "should destroy theory" do
    assert_difference('Theory.count', -1) do
      delete theory_url(@theory)
    end

    assert_redirected_to theories_url
  end
end
