class ServdetailsController < ApplicationController
  before_action :set_servdetail, only: [:show, :update, :destroy]

  # GET /servdetails
  def index
    @servdetails = Servdetail.all

    render json: @servdetails
  end

  # GET /servdetails/1
  def show
    render json: @servdetail
  end

  # POST /servdetails
  def create
    @servdetail = Servdetail.new(servdetail_params)

    if @servdetail.save
      render json: @servdetail, status: :created, location: @servdetail
    else
      render json: @servdetail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /servdetails/1
  def update
    if @servdetail.update(servdetail_params)
      render json: @servdetail
    else
      render json: @servdetail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /servdetails/1
  def destroy
    @servdetail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servdetail
      @servdetail = Servdetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def servdetail_params
      params.require(:servdetail).permit(:name, :cpu)
    end
end
