require "test_helper"

class SubDivisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_division = sub_divisions(:one)
  end

  test "should get index" do
    get sub_divisions_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_division_url
    assert_response :success
  end

  test "should create sub_division" do
    assert_difference("SubDivision.count") do
      post sub_divisions_url, params: { sub_division: { division_id: @sub_division.division_id, name: @sub_division.name } }
    end

    assert_redirected_to sub_division_url(SubDivision.last)
  end

  test "should show sub_division" do
    get sub_division_url(@sub_division)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_division_url(@sub_division)
    assert_response :success
  end

  test "should update sub_division" do
    patch sub_division_url(@sub_division), params: { sub_division: { division_id: @sub_division.division_id, name: @sub_division.name } }
    assert_redirected_to sub_division_url(@sub_division)
  end

  test "should destroy sub_division" do
    assert_difference("SubDivision.count", -1) do
      delete sub_division_url(@sub_division)
    end

    assert_redirected_to sub_divisions_url
  end
end
