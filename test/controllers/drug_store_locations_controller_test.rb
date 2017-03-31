require 'test_helper'

class DrugStoreLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drug_store_location = drug_store_locations(:one)
  end

  test "should get index" do
    get drug_store_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_drug_store_location_url
    assert_response :success
  end

  test "should create drug_store_location" do
    assert_difference('DrugStoreLocation.count') do
      post drug_store_locations_url, params: { drug_store_location: {  } }
    end

    assert_redirected_to drug_store_location_url(DrugStoreLocation.last)
  end

  test "should show drug_store_location" do
    get drug_store_location_url(@drug_store_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_drug_store_location_url(@drug_store_location)
    assert_response :success
  end

  test "should update drug_store_location" do
    patch drug_store_location_url(@drug_store_location), params: { drug_store_location: {  } }
    assert_redirected_to drug_store_location_url(@drug_store_location)
  end

  test "should destroy drug_store_location" do
    assert_difference('DrugStoreLocation.count', -1) do
      delete drug_store_location_url(@drug_store_location)
    end

    assert_redirected_to drug_store_locations_url
  end
end
