class CentrosController < ApplicationController
  before_action :set_centro, except: [:allcentros]

  # GET /centros
  # GET /centros.json
  def index
    @centros = @regional.centros.all
  end

  def allcentros

    @centros = Centro.all

  end


  # GET /centros/1
  # GET /centros/1.json
  def show
    @regional = Regional.find(params[:regional_id])
  end

  # GET /centros/new
  def new
    @centro = Centro.new
  end

  # GET /centros/1/edit
  def edit
  end

  # POST /centros
  # POST /centros.json
  def create
    @centro = Centro.new(centro_params)
    @centro.regional_id = @regional.id
    respond_to do |format|
      if @centro.save
        format.html { redirect_to regional_centros_path(@regional,@centro), notice: 'Centro was successfully created.' }
        format.json { render :show, status: :created, location: @centro }
      else
        format.html { render :new }
        format.json { render json: @centro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centros/1
  # PATCH/PUT /centros/1.json
  def update
    respond_to do |format|
      if @centro.update(centro_params)
        format.html { redirect_to regional_centros_path(@regional,@centro), notice: 'Centro was successfully updated.' }
        format.json { render :show, status: :ok, location: @centro }
      else
        format.html { render :edit }
        format.json { render json: @centro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centros/1
  # DELETE /centros/1.json
  def destroy
    @centro.destroy
    respond_to do |format|
      format.html { redirect_to regional_centros_path(@regional), notice: 'Centro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centro
      @regional = Regional.find(params[:regional_id]) 
      @centro = Centro.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centro_params
      params.require(:centro).permit(:nombre, :ciudad, :codigo, :regional_id)
    end
end
