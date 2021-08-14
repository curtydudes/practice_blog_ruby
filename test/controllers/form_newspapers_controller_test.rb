require "test_helper"

class FormNewspapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_newspaper = form_newspapers(:one)
  end

  test "should get index" do
    get form_newspapers_url
    assert_response :success
  end

  test "should get new" do
    get new_form_newspaper_url
    assert_response :success
  end

  test "should create form_newspaper" do
    assert_difference('FormNewspaper.count') do
      post form_newspapers_url, params: { form_newspaper: { age: @form_newspaper.age, name: @form_newspaper.name, nickname: @form_newspaper.nickname } }
    end

    assert_redirected_to form_newspaper_url(FormNewspaper.last)
  end

  test "should show form_newspaper" do
    get form_newspaper_url(@form_newspaper)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_newspaper_url(@form_newspaper)
    assert_response :success
  end

  test "should update form_newspaper" do
    patch form_newspaper_url(@form_newspaper), params: { form_newspaper: { age: @form_newspaper.age, name: @form_newspaper.name, nickname: @form_newspaper.nickname } }
    assert_redirected_to form_newspaper_url(@form_newspaper)
  end

  test "should destroy form_newspaper" do
    assert_difference('FormNewspaper.count', -1) do
      delete form_newspaper_url(@form_newspaper)
    end

    assert_redirected_to form_newspapers_url
  end
end
