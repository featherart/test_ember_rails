class CrudsController < ApplicationController
  before_action :set_crud, only: [:show, :edit, :update, :destroy]

  # GET /cruds
  # GET /cruds.json
  def index
    @cruds = Crud.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cruds }
    end
  end

  # GET /cruds/1
  # GET /cruds/1.json
  def show
    @crud = Crud.find(params[:id])

    respond_to do |format|
      format.json { render json: @crud }
    end
  end

  # GET /cruds/new
  def new
    @crud = Crud.new

    respond_to do |format|
      format.json { render json: @crud }
    end
  end

  # POST /cruds
  # POST /cruds.json
  def create
    @crud = Crud.new(crud_params)

    respond_to do |format|
      if @crud.save
        format.json { render :show, status: :created, location: @crud }
      else
        format.json { render json: @crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cruds/1
  # PATCH/PUT /cruds/1.json
  def update
    respond_to do |format|
      if @crud.update(crud_params)
        format.json { render :show, status: :ok, location: @crud }
      else
        format.json { render json: @crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cruds/1
  # DELETE /cruds/1.json
  def destroy
    @crud.destroy
    respond_to do |format|
      
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud
      @crud = Crud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crud_params
      params[:crud]
    end
end
