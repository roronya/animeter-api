class AnimesController < ApplicationController
  before_action :set_anime, only: [:show, :update, :destroy]

  # GET /animes
  def index
    @animes = Anime.all

    render json: @animes
  end

  # GET /animes/1
  def show
    render json: @anime
  end

  # POST /animes
  def create
    @anime = Anime.new(anime_params)

    if @anime.save
      render json: @anime, status: :created, location: @anime
    else
      render json: @anime.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animes/1
  def update
    if @anime.update(anime_params)
      render json: @anime
    else
      render json: @anime.errors, status: :unprocessable_entity
    end
  end

  # DELETE /animes/1
  def destroy
    @anime.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime
      @anime = Anime.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def anime_params
      params.fetch(:anime, {})
    end
end
