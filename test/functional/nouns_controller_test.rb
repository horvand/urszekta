require 'test_helper'

class NounsControllerTest < ActionController::TestCase
  setup do
    @noun = nouns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nouns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noun" do
    assert_difference('Noun.count') do
      post :create, :noun => @noun.attributes
    end

    assert_redirected_to noun_path(assigns(:noun))
  end

  test "should show noun" do
    get :show, :id => @noun.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @noun.to_param
    assert_response :success
  end

  test "should update noun" do
    put :update, :id => @noun.to_param, :noun => @noun.attributes
    assert_redirected_to noun_path(assigns(:noun))
  end

  test "should destroy noun" do
    assert_difference('Noun.count', -1) do
      delete :destroy, :id => @noun.to_param
    end

    assert_redirected_to nouns_path
  end
end
