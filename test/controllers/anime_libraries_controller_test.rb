require 'test_helper'

class AnimeLibrariesControllerTest < ActionController::TestCase
  setup do
    @anime_library = anime_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anime_libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anime_library" do
    assert_difference('AnimeLibrary.count') do
      post :create, anime_library: { anime_id: @anime_library.anime_id, user_id: @anime_library.user_id }
    end

    assert_redirected_to anime_library_path(assigns(:anime_library))
  end

  test "should show anime_library" do
    get :show, id: @anime_library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anime_library
    assert_response :success
  end

  test "should update anime_library" do
    patch :update, id: @anime_library, anime_library: { anime_id: @anime_library.anime_id, user_id: @anime_library.user_id }
    assert_redirected_to anime_library_path(assigns(:anime_library))
  end

  test "should destroy anime_library" do
    assert_difference('AnimeLibrary.count', -1) do
      delete :destroy, id: @anime_library
    end

    assert_redirected_to anime_libraries_path
  end
end
