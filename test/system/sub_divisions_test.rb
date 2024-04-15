require "application_system_test_case"

class SubDivisionsTest < ApplicationSystemTestCase
  setup do
    @sub_division = sub_divisions(:one)
  end

  test "visiting the index" do
    visit sub_divisions_url
    assert_selector "h1", text: "Sub divisions"
  end

  test "should create sub division" do
    visit sub_divisions_url
    click_on "New sub division"

    fill_in "Division", with: @sub_division.division_id
    fill_in "Name", with: @sub_division.name
    click_on "Create Sub division"

    assert_text "Sub division was successfully created"
    click_on "Back"
  end

  test "should update Sub division" do
    visit sub_division_url(@sub_division)
    click_on "Edit this sub division", match: :first

    fill_in "Division", with: @sub_division.division_id
    fill_in "Name", with: @sub_division.name
    click_on "Update Sub division"

    assert_text "Sub division was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub division" do
    visit sub_division_url(@sub_division)
    click_on "Destroy this sub division", match: :first

    assert_text "Sub division was successfully destroyed"
  end
end
