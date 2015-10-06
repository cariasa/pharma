require 'test_helper'

class PersontypesControllerTest < ActionController::TestCase
  setup do
    @persontype = persontypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persontypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persontype" do
    assert_difference('Persontype.count') do
      post :create, persontype: { persontype: @persontype.persontype }
    end

    assert_redirected_to persontype_path(assigns(:persontype))
  end

  test "should show persontype" do
    get :show, id: @persontype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persontype
    assert_response :success
  end

  test "should update persontype" do
    patch :update, id: @persontype, persontype: { persontype: @persontype.persontype }
    assert_redirected_to persontype_path(assigns(:persontype))
  end

  test "should destroy persontype" do
    assert_difference('Persontype.count', -1) do
      delete :destroy, id: @persontype
    end

    assert_redirected_to persontypes_path
  end
end
