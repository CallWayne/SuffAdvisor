require 'test_helper'

class DiscotheksControllerTest < ActionController::TestCase
  setup do
    @discothek = discotheks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discotheks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discothek" do
    assert_difference('Discothek.count') do
      post :create, discothek: { address: @discothek.address, description: @discothek.description, place: @discothek.place, title: @discothek.title }
    end

    assert_redirected_to discothek_path(assigns(:discothek))
  end

  test "should show discothek" do
    get :show, id: @discothek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discothek
    assert_response :success
  end

  test "should update discothek" do
    patch :update, id: @discothek, discothek: { address: @discothek.address, description: @discothek.description, place: @discothek.place, title: @discothek.title }
    assert_redirected_to discothek_path(assigns(:discothek))
  end

  test "should destroy discothek" do
    assert_difference('Discothek.count', -1) do
      delete :destroy, id: @discothek
    end

    assert_redirected_to discotheks_path
  end
end
