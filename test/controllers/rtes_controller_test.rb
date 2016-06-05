require 'test_helper'

class RtesControllerTest < ActionController::TestCase
  setup do
    @rte = rtes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rtes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rte" do
    assert_difference('Rte.count') do
      post :create, rte: { date: @rte.date, name: @rte.name, organiser: @rte.organiser, place: @rte.place, school: @rte.school, volunteer: @rte.volunteer }
    end

    assert_redirected_to rte_path(assigns(:rte))
  end

  test "should show rte" do
    get :show, id: @rte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rte
    assert_response :success
  end

  test "should update rte" do
    patch :update, id: @rte, rte: { date: @rte.date, name: @rte.name, organiser: @rte.organiser, place: @rte.place, school: @rte.school, volunteer: @rte.volunteer }
    assert_redirected_to rte_path(assigns(:rte))
  end

  test "should destroy rte" do
    assert_difference('Rte.count', -1) do
      delete :destroy, id: @rte
    end

    assert_redirected_to rtes_path
  end
end
