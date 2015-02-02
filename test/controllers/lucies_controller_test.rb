require 'test_helper'

class LuciesControllerTest < ActionController::TestCase
  setup do
    @lucy = lucies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lucies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lucy" do
    assert_difference('Lucy.count') do
      post :create, lucy: { title: @lucy.title }
    end

    assert_redirected_to lucy_path(assigns(:lucy))
  end

  test "should show lucy" do
    get :show, id: @lucy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lucy
    assert_response :success
  end

  test "should update lucy" do
    patch :update, id: @lucy, lucy: { title: @lucy.title }
    assert_redirected_to lucy_path(assigns(:lucy))
  end

  test "should destroy lucy" do
    assert_difference('Lucy.count', -1) do
      delete :destroy, id: @lucy
    end

    assert_redirected_to lucies_path
  end
end
