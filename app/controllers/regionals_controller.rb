class RegionalsController < ApplicationController
  before_action :set_regional, only: [:show, :edit, :update, :destroy]

  # GET /regionals
  # GET /regionals.json
  def index
    @regionals = Regional.all
  end

  # GET /regionals/1
  # GET /regionals/1.json
  def show
  end

  # GET /regionals/new
  def new
    @regional = Regional.new
  end

  # GET /regionals/1/edit
  def edit
  end

  # POST /regionals
  # POST /regionals.json
  def create
    @regional = Regional.new(regional_params)

    respond_to do |format|
      if @regional.save
        format.html { redirect_to @regional, notice: 'Regional was successfully created.' }
        format.json { render :show, status: :created, location: @regional }
      else
        format.html { render :new }
        format.json { render json: @regional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regionals/1
  # PATCH/PUT /regionals/1.json
  def update
    respond_to do |format|
      if @regional.update(regional_params)
        format.html { redirect_to @regional, notice: 'Regional was successfully updated.' }
        format.json { render :show, status: :ok, location: @regional }
      else
        format.html { render :edit }
        format.json { render json: @regional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionals/1
  # DELETE /regionals/1.json
  def destroy
    @regional.destroy
    respond_to do |format|
      format.html { redirect_to regionals_url, notice: 'Regional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regional
      @regional = Regional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regional_params
      params.require(:regional).permit(:departamento)
    end
end
