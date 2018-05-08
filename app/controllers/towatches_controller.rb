class TowatchesController < ApplicationController
  before_action :set_towatch, only: [:show, :update, :destroy]

  # GET /towatches
  def index
    @towatches = Towatch.all

    render json: @towatches
  end

  # GET /towatches/1
  def show
    render json: @towatch
  end

  # POST /towatches
  def create
    @towatch = Towatch.new(towatch_params)

    if @towatch.save
      render json: @towatch, status: :created, location: @towatch
    else
      render json: @towatch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /towatches/1
  def update
    if @towatch.update(towatch_params)
      render json: @towatch
    else
      render json: @towatch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /towatches/1
  def destroy
    @towatch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_towatch
      @towatch = Towatch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def towatch_params
      params.fetch(:towatch, {})
    end
end
