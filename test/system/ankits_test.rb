require "application_system_test_case"

class AnkitsTest < ApplicationSystemTestCase
  setup do
    @ankit = ankits(:one)
  end

  test "visiting the index" do
    visit ankits_url
    assert_selector "h1", text: "Ankits"
  end

  test "creating a Ankit" do
    visit ankits_url
    click_on "New Ankit"

    fill_in "Age", with: @ankit.age
    fill_in "Email", with: @ankit.email
    fill_in "Name", with: @ankit.name
    click_on "Create Ankit"

    assert_text "Ankit was successfully created"
    click_on "Back"
  end

  test "updating a Ankit" do
    visit ankits_url
    click_on "Edit", match: :first

    fill_in "Age", with: @ankit.age
    fill_in "Email", with: @ankit.email
    fill_in "Name", with: @ankit.name
    click_on "Update Ankit"

    assert_text "Ankit was successfully updated"
    click_on "Back"
  end

  test "destroying a Ankit" do
    visit ankits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ankit was successfully destroyed"
  end
end
