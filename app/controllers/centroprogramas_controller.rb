class CentroprogramasController < ApplicationController
  before_action :set_centroprograma, only: [:show, :edit, :update, :destroy]

  # GET /centroprogramas
  # GET /centroprogramas.json
  def index
    @centroprogramas = Centroprograma.all
  end

  # GET /centroprogramas/1
  # GET /centroprogramas/1.json
  def show
  end

  # GET /centroprogramas/new
  def new
    @centroprograma = Centroprograma.new
  end

  # GET /centroprogramas/1/edit
  def edit
  end

  # POST /centroprogramas
  # POST /centroprogramas.json
  def create
    @centroprograma = Centroprograma.new(centroprograma_params)

    respond_to do |format|
      if @centroprograma.save
        format.html { redirect_to @centroprograma, notice: 'Centroprograma was successfully created.' }
        format.json { render :show, status: :created, location: @centroprograma }
      else
        format.html { render :new }
        format.json { render json: @centroprograma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centroprogramas/1
  # PATCH/PUT /centroprogramas/1.json
  def update
    respond_to do |format|
      if @centroprograma.update(centroprograma_params)
        format.html { redirect_to @centroprograma, notice: 'Centroprograma was successfully updated.' }
        format.json { render :show, status: :ok, location: @centroprograma }
      else
        format.html { render :edit }
        format.json { render json: @centroprograma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centroprogramas/1
  # DELETE /centroprogramas/1.json
  def destroy
    @centroprograma.destroy
    respond_to do |format|
      format.html { redirect_to centroprogramas_url, notice: 'Centroprograma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centroprograma
      @centroprograma = Centroprograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centroprograma_params
      params.require(:centroprograma).permit(:centro_id, :programa_id)
    end
end
