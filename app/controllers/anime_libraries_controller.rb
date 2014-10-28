class AnimeLibrariesController < ApplicationController
  before_action :set_anime_library, only: [:show, :edit, :update, :destroy]

  def index
    @anime_libraries = AnimeLibrary.all
    respond_with(@anime_libraries)
  end

  def show
    respond_with(@anime_library)
  end

  def new
    @anime_library = AnimeLibrary.new
    respond_with(@anime_library)
  end

  def edit
  end

  def create
    @anime_library = AnimeLibrary.new(anime_library_params)
    @anime_library.save
    respond_with(@anime_library)
  end

  def update
    @anime_library.update(anime_library_params)
    respond_with(@anime_library)
  end

  def destroy
    @anime_library.destroy
    respond_with(@anime_library)
  end

  private
    def set_anime_library
      @anime_library = AnimeLibrary.find(params[:id])
    end

    def anime_library_params
      params.require(:anime_library).permit(:user_id, :anime_id)
    end
end
