require 'test_helper'

class ProductsSubstancesControllerTest < ActionController::TestCase
  setup do
    @products_substance = products_substances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products_substances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create products_substance" do
    assert_difference('ProductsSubstance.count') do
      post :create, products_substance: { concentration: @products_substance.concentration, product_id: @products_substance.product_id, substance_id: @products_substance.substance_id, units: @products_substance.units }
    end

    assert_redirected_to products_substance_path(assigns(:products_substance))
  end

  test "should show products_substance" do
    get :show, id: @products_substance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @products_substance
    assert_response :success
  end

  test "should update products_substance" do
    patch :update, id: @products_substance, products_substance: { concentration: @products_substance.concentration, product_id: @products_substance.product_id, substance_id: @products_substance.substance_id, units: @products_substance.units }
    assert_redirected_to products_substance_path(assigns(:products_substance))
  end

  test "should destroy products_substance" do
    assert_difference('ProductsSubstance.count', -1) do
      delete :destroy, id: @products_substance
    end

    assert_redirected_to products_substances_path
  end
end
