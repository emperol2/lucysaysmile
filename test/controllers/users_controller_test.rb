require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { about_company: @user.about_company, about_me: @user.about_me, address: @user.address, city: @user.city, company_name: @user.company_name, company_type: @user.company_type, contact_number: @user.contact_number, country: @user.country, created_at: @user.created_at, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, linkedin_id: @user.linkedin_id, password_digest: @user.password_digest, payment_info: @user.payment_info, paypal_account: @user.paypal_account, skpye_id: @user.skpye_id, state: @user.state, timezone: @user.timezone, updated_at: @user.updated_at, website: @user.website, zipcode: @user.zipcode }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { about_company: @user.about_company, about_me: @user.about_me, address: @user.address, city: @user.city, company_name: @user.company_name, company_type: @user.company_type, contact_number: @user.contact_number, country: @user.country, created_at: @user.created_at, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, linkedin_id: @user.linkedin_id, password_digest: @user.password_digest, payment_info: @user.payment_info, paypal_account: @user.paypal_account, skpye_id: @user.skpye_id, state: @user.state, timezone: @user.timezone, updated_at: @user.updated_at, website: @user.website, zipcode: @user.zipcode }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
