require "application_system_test_case"

class JobbsTest < ApplicationSystemTestCase
  setup do
    @jobb = jobbs(:one)
  end

  test "visiting the index" do
    visit jobbs_url
    assert_selector "h1", text: "Jobbs"
  end

  test "creating a Jobb" do
    visit jobbs_url
    click_on "New Jobb"

    fill_in "Description", with: @jobb.description
    fill_in "Title", with: @jobb.title
    click_on "Create Jobb"

    assert_text "Jobb was successfully created"
    click_on "Back"
  end

  test "updating a Jobb" do
    visit jobbs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @jobb.description
    fill_in "Title", with: @jobb.title
    click_on "Update Jobb"

    assert_text "Jobb was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobb" do
    visit jobbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobb was successfully destroyed"
  end
end
