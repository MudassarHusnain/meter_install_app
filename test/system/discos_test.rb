require "application_system_test_case"

class DiscosTest < ApplicationSystemTestCase
  setup do
    @disco = discos(:one)
  end

  test "visiting the index" do
    visit discos_url
    assert_selector "h1", text: "Discos"
  end

  test "should create disco" do
    visit discos_url
    click_on "New disco"

    fill_in "Name", with: @disco.name
    click_on "Create Disco"

    assert_text "Disco was successfully created"
    click_on "Back"
  end

  test "should update Disco" do
    visit disco_url(@disco)
    click_on "Edit this disco", match: :first

    fill_in "Name", with: @disco.name
    click_on "Update Disco"

    assert_text "Disco was successfully updated"
    click_on "Back"
  end

  test "should destroy Disco" do
    visit disco_url(@disco)
    click_on "Destroy this disco", match: :first

    assert_text "Disco was successfully destroyed"
  end
end
