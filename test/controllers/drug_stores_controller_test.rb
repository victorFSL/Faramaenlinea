require 'test_helper'

class DrugStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drug_store = drug_stores(:one)
  end

  test "should get index" do
    get drug_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_drug_store_url
    assert_response :success
  end

  test "should create drug_store" do
    assert_difference('DrugStore.count') do
      post drug_stores_url, params: { drug_store: { address: @drug_store.address, delivery_radius: @drug_store.delivery_radius, hours: @drug_store.hours, logo: @drug_store.logo, name: @drug_store.name, payment_options: @drug_store.payment_options } }
    end

    assert_redirected_to drug_store_url(DrugStore.last)
  end

  test "should show drug_store" do
    get drug_store_url(@drug_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_drug_store_url(@drug_store)
    assert_response :success
  end

  test "should update drug_store" do
    patch drug_store_url(@drug_store), params: { drug_store: { address: @drug_store.address, delivery_radius: @drug_store.delivery_radius, hours: @drug_store.hours, logo: @drug_store.logo, name: @drug_store.name, payment_options: @drug_store.payment_options } }
    assert_redirected_to drug_store_url(@drug_store)
  end

  test "should destroy drug_store" do
    assert_difference('DrugStore.count', -1) do
      delete drug_store_url(@drug_store)
    end

    assert_redirected_to drug_stores_url
  end
end
