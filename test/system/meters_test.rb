require "application_system_test_case"

class MetersTest < ApplicationSystemTestCase
  setup do
    @meter = meters(:one)
  end

  test "visiting the index" do
    visit meters_url
    assert_selector "h1", text: "Meters"
  end

  test "should create meter" do
    visit meters_url
    click_on "New meter"

    fill_in "Address", with: @meter.address
    fill_in "Application no", with: @meter.application_no
    fill_in "Bill month", with: @meter.bill_month
    fill_in "Connection type", with: @meter.connection_type
    fill_in "Full name", with: @meter.full_name
    fill_in "Green meter", with: @meter.green_meter
    fill_in "Kwh mf", with: @meter.kwh_mf
    fill_in "Latitude", with: @meter.latitude
    fill_in "Longitude", with: @meter.longitude
    fill_in "Meter type", with: @meter.meter_type
    fill_in "New meter number", with: @meter.new_meter_number
    fill_in "New meter reading", with: @meter.new_meter_reading
    fill_in "Old meter reading", with: @meter.old_meter_reading
    fill_in "Older meter no", with: @meter.older_meter_no
    fill_in "Picture upload", with: @meter.picture_upload
    check "Qc check" if @meter.qc_check
    fill_in "Reference no", with: @meter.reference_no
    fill_in "Sanction load", with: @meter.sanction_load
    fill_in "Signal strength", with: @meter.signal_strength
    fill_in "Sim no", with: @meter.sim_no
    fill_in "Status", with: @meter.status
    fill_in "Sub divisions", with: @meter.sub_divisions_id
    fill_in "Telco", with: @meter.telco
    click_on "Create Meter"

    assert_text "Meter was successfully created"
    click_on "Back"
  end

  test "should update Meter" do
    visit meter_url(@meter)
    click_on "Edit this meter", match: :first

    fill_in "Address", with: @meter.address
    fill_in "Application no", with: @meter.application_no
    fill_in "Bill month", with: @meter.bill_month
    fill_in "Connection type", with: @meter.connection_type
    fill_in "Full name", with: @meter.full_name
    fill_in "Green meter", with: @meter.green_meter
    fill_in "Kwh mf", with: @meter.kwh_mf
    fill_in "Latitude", with: @meter.latitude
    fill_in "Longitude", with: @meter.longitude
    fill_in "Meter type", with: @meter.meter_type
    fill_in "New meter number", with: @meter.new_meter_number
    fill_in "New meter reading", with: @meter.new_meter_reading
    fill_in "Old meter reading", with: @meter.old_meter_reading
    fill_in "Older meter no", with: @meter.older_meter_no
    fill_in "Picture upload", with: @meter.picture_upload
    check "Qc check" if @meter.qc_check
    fill_in "Reference no", with: @meter.reference_no
    fill_in "Sanction load", with: @meter.sanction_load
    fill_in "Signal strength", with: @meter.signal_strength
    fill_in "Sim no", with: @meter.sim_no
    fill_in "Status", with: @meter.status
    fill_in "Sub divisions", with: @meter.sub_divisions_id
    fill_in "Telco", with: @meter.telco
    click_on "Update Meter"

    assert_text "Meter was successfully updated"
    click_on "Back"
  end

  test "should destroy Meter" do
    visit meter_url(@meter)
    click_on "Destroy this meter", match: :first

    assert_text "Meter was successfully destroyed"
  end
end
