class SdsController < ApplicationController
  before_action :set_sd, only: [:show, :update, :destroy]

  # GET /sds
  def index
    @sds = Sd.all

    render json: @sds
  end

  # GET /sds/1
  def show
    render json: @sd
  end

  # POST /sds
  def create
    @sd = Sd.new(sd_params)

    if @sd.save
      render json: @sd, status: :created, location: @sd
    else
      render json: @sd.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sds/1
  def update
    if @sd.update(sd_params)
      render json: @sd
    else
      render json: @sd.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sds/1
  def destroy
    @sd.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sd
      @sd = Sd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sd_params
      params.require(:sd).permit(:name, :cpu, :disk, :process)
    end
end
