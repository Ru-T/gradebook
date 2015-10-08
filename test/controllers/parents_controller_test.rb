require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    session[:user_id] = parents(:one).id
    session[:user_type] = "Parent"
  end


  test "should get index" do
    get :index
    assert_redirected_to grades_path
    assert_not_nil assigns(:parents)
  end

  test "should get new" do
    get :new
    assert_redirected_to grades_path(assigns(:parent))
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { email: @parent.email, name: @parent.name, password_digest: @parent.password_digest, student_id: @parent.student_id }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_redirected_to grades_path(assigns(:parent))
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_redirected_to grades_path(assigns(:parent))
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { email: @parent.email, name: @parent.name, password_digest: @parent.password_digest, student_id: @parent.student_id }
    assert_redirected_to grades_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
