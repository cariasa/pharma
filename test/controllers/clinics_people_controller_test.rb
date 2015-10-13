require 'test_helper'

class ClinicsPeopleControllerTest < ActionController::TestCase
  setup do
    @clinics_person = clinics_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinics_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinics_person" do
    assert_difference('ClinicsPerson.count') do
      post :create, clinics_person: { clinic_id: @clinics_person.clinic_id, person_id: @clinics_person.person_id }
    end

    assert_redirected_to clinics_person_path(assigns(:clinics_person))
  end

  test "should show clinics_person" do
    get :show, id: @clinics_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinics_person
    assert_response :success
  end

  test "should update clinics_person" do
    patch :update, id: @clinics_person, clinics_person: { clinic_id: @clinics_person.clinic_id, person_id: @clinics_person.person_id }
    assert_redirected_to clinics_person_path(assigns(:clinics_person))
  end

  test "should destroy clinics_person" do
    assert_difference('ClinicsPerson.count', -1) do
      delete :destroy, id: @clinics_person
    end

    assert_redirected_to clinics_people_path
  end
end
