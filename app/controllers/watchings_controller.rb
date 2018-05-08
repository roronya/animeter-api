class WatchingsController < ApplicationController
  before_action :set_watching, only: [:show, :update, :destroy]

  # GET /watchings
  def index
    @watchings = Watching.all

    render json: @watchings
  end

  # GET /watchings/1
  def show
    render json: @watching
  end

  # POST /watchings
  def create
    @watching = Watching.new(watching_params)

    if @watching.save
      render json: @watching, status: :created, location: @watching
    else
      render json: @watching.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /watchings/1
  def update
    if @watching.update(watching_params)
      render json: @watching
    else
      render json: @watching.errors, status: :unprocessable_entity
    end
  end

  # DELETE /watchings/1
  def destroy
    @watching.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watching
      @watching = Watching.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def watching_params
      params.fetch(:watching, {})
    end
end
