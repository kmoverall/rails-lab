require 'test_helper'

class ShoppingCartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_cart" do
    assert_difference('ShoppingCart.count') do
      post :create, :shopping_cart => { }
    end

    assert_redirected_to shopping_cart_path(assigns(:shopping_cart))
  end

  test "should show shopping_cart" do
    get :show, :id => shopping_carts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => shopping_carts(:one).to_param
    assert_response :success
  end

  test "should update shopping_cart" do
    put :update, :id => shopping_carts(:one).to_param, :shopping_cart => { }
    assert_redirected_to shopping_cart_path(assigns(:shopping_cart))
  end

  test "should destroy shopping_cart" do
    assert_difference('ShoppingCart.count', -1) do
      delete :destroy, :id => shopping_carts(:one).to_param
    end

    assert_redirected_to shopping_carts_path
  end
end
