require 'test_helper'

class NotaControllerTest < ActionController::TestCase
  setup do
    @notum = nota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notum" do
    assert_difference('Notum.count') do
      post :create, notum: { aluno: @notum.aluno, curso: @notum.curso, data: @notum.data, nota1: @notum.nota1, nota2: @notum.nota2, nota3: @notum.nota3, professor: @notum.professor }
    end

    assert_redirected_to notum_path(assigns(:notum))
  end

  test "should show notum" do
    get :show, id: @notum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notum
    assert_response :success
  end

  test "should update notum" do
    patch :update, id: @notum, notum: { aluno: @notum.aluno, curso: @notum.curso, data: @notum.data, nota1: @notum.nota1, nota2: @notum.nota2, nota3: @notum.nota3, professor: @notum.professor }
    assert_redirected_to notum_path(assigns(:notum))
  end

  test "should destroy notum" do
    assert_difference('Notum.count', -1) do
      delete :destroy, id: @notum
    end

    assert_redirected_to nota_path
  end
end
