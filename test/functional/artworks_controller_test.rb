require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post :create, :artwork => { }
    end

    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should show artwork" do
    get :show, :id => artworks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => artworks(:one).to_param
    assert_response :success
  end

  test "should update artwork" do
    put :update, :id => artworks(:one).to_param, :artwork => { }
    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete :destroy, :id => artworks(:one).to_param
    end

    assert_redirected_to artworks_path
  end
end
