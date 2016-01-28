require 'test_helper'

class DoctorsControllerTest < ActionController::TestCase
  setup do
    @doctor = doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor" do
    assert_difference('Doctor.count') do
      post :create, doctor: { clinic_address: @doctor.clinic_address, clinic_name: @doctor.clinic_name, clinic_phone: @doctor.clinic_phone, doctors_direct_phone: @doctor.doctors_direct_phone, doctors_name: @doctor.doctors_name, email: @doctor.email, fax_number: @doctor.fax_number }
    end

    assert_redirected_to doctor_path(assigns(:doctor))
  end

  test "should show doctor" do
    get :show, id: @doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor
    assert_response :success
  end

  test "should update doctor" do
    patch :update, id: @doctor, doctor: { clinic_address: @doctor.clinic_address, clinic_name: @doctor.clinic_name, clinic_phone: @doctor.clinic_phone, doctors_direct_phone: @doctor.doctors_direct_phone, doctors_name: @doctor.doctors_name, email: @doctor.email, fax_number: @doctor.fax_number }
    assert_redirected_to doctor_path(assigns(:doctor))
  end

  test "should destroy doctor" do
    assert_difference('Doctor.count', -1) do
      delete :destroy, id: @doctor
    end

    assert_redirected_to doctors_path
  end
end
