require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { billing_address: @customer.billing_address, billing_info: @customer.billing_info, diabetes: @customer.diabetes, dob: @customer.dob, dr_fax: @customer.dr_fax, dr_name: @customer.dr_name, dr_phone: @customer.dr_phone, drinker: @customer.drinker, drug_alergies: @customer.drug_alergies, emotional_mood_disorders: @customer.emotional_mood_disorders, eye_disorders: @customer.eye_disorders, first_name: @customer.first_name, heart_disease: @customer.heart_disease, high_lipids: @customer.high_lipids, kidney_disorders: @customer.kidney_disorders, last_name: @customer.last_name, middle_name: @customer.middle_name, neurological_disorders: @customer.neurological_disorders, other_disorders: @customer.other_disorders, phone: @customer.phone, shipping_address: @customer.shipping_address, smoker: @customer.smoker, stomach_disorders: @customer.stomach_disorders }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { billing_address: @customer.billing_address, billing_info: @customer.billing_info, diabetes: @customer.diabetes, dob: @customer.dob, dr_fax: @customer.dr_fax, dr_name: @customer.dr_name, dr_phone: @customer.dr_phone, drinker: @customer.drinker, drug_alergies: @customer.drug_alergies, emotional_mood_disorders: @customer.emotional_mood_disorders, eye_disorders: @customer.eye_disorders, first_name: @customer.first_name, heart_disease: @customer.heart_disease, high_lipids: @customer.high_lipids, kidney_disorders: @customer.kidney_disorders, last_name: @customer.last_name, middle_name: @customer.middle_name, neurological_disorders: @customer.neurological_disorders, other_disorders: @customer.other_disorders, phone: @customer.phone, shipping_address: @customer.shipping_address, smoker: @customer.smoker, stomach_disorders: @customer.stomach_disorders }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
