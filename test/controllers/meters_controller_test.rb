require "test_helper"

class MetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meter = meters(:one)
  end

  test "should get index" do
    get meters_url
    assert_response :success
  end

  test "should get new" do
    get new_meter_url
    assert_response :success
  end

  test "should create meter" do
    assert_difference("Meter.count") do
      post meters_url, params: { meter: { address: @meter.address, application_no: @meter.application_no, bill_month: @meter.bill_month, connection_type: @meter.connection_type, full_name: @meter.full_name, green_meter: @meter.green_meter, kwh_mf: @meter.kwh_mf, latitude: @meter.latitude, longitude: @meter.longitude, meter_type: @meter.meter_type, new_meter_number: @meter.new_meter_number, new_meter_reading: @meter.new_meter_reading, old_meter_reading: @meter.old_meter_reading, older_meter_no: @meter.older_meter_no, picture_upload: @meter.picture_upload, qc_check: @meter.qc_check, reference_no: @meter.reference_no, sanction_load: @meter.sanction_load, signal_strength: @meter.signal_strength, sim_no: @meter.sim_no, status: @meter.status, sub_divisions_id: @meter.sub_divisions_id, telco: @meter.telco } }
    end

    assert_redirected_to meter_url(Meter.last)
  end

  test "should show meter" do
    get meter_url(@meter)
    assert_response :success
  end

  test "should get edit" do
    get edit_meter_url(@meter)
    assert_response :success
  end

  test "should update meter" do
    patch meter_url(@meter), params: { meter: { address: @meter.address, application_no: @meter.application_no, bill_month: @meter.bill_month, connection_type: @meter.connection_type, full_name: @meter.full_name, green_meter: @meter.green_meter, kwh_mf: @meter.kwh_mf, latitude: @meter.latitude, longitude: @meter.longitude, meter_type: @meter.meter_type, new_meter_number: @meter.new_meter_number, new_meter_reading: @meter.new_meter_reading, old_meter_reading: @meter.old_meter_reading, older_meter_no: @meter.older_meter_no, picture_upload: @meter.picture_upload, qc_check: @meter.qc_check, reference_no: @meter.reference_no, sanction_load: @meter.sanction_load, signal_strength: @meter.signal_strength, sim_no: @meter.sim_no, status: @meter.status, sub_divisions_id: @meter.sub_divisions_id, telco: @meter.telco } }
    assert_redirected_to meter_url(@meter)
  end

  test "should destroy meter" do
    assert_difference("Meter.count", -1) do
      delete meter_url(@meter)
    end

    assert_redirected_to meters_url
  end
end
