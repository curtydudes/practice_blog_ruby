require "application_system_test_case"

class FormNewspapersTest < ApplicationSystemTestCase
  setup do
    @form_newspaper = form_newspapers(:one)
  end

  test "visiting the index" do
    visit form_newspapers_url
    assert_selector "h1", text: "Form Newspapers"
  end

  test "creating a Form newspaper" do
    visit form_newspapers_url
    click_on "New Form Newspaper"

    fill_in "Age", with: @form_newspaper.age
    fill_in "Name", with: @form_newspaper.name
    fill_in "Nickname", with: @form_newspaper.nickname
    click_on "Create Form newspaper"

    assert_text "Form newspaper was successfully created"
    click_on "Back"
  end

  test "updating a Form newspaper" do
    visit form_newspapers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @form_newspaper.age
    fill_in "Name", with: @form_newspaper.name
    fill_in "Nickname", with: @form_newspaper.nickname
    click_on "Update Form newspaper"

    assert_text "Form newspaper was successfully updated"
    click_on "Back"
  end

  test "destroying a Form newspaper" do
    visit form_newspapers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form newspaper was successfully destroyed"
  end
end
