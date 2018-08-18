class ServicosMulheresController < ApplicationController
  before_action :set_servicos_mulhere, only: [:show, :edit, :update, :destroy]

  # GET /servicos_mulheres
  # GET /servicos_mulheres.json
  def index
    @servicos_mulheres = ServicosMulhere.all
  end

  # GET /servicos_mulheres/1
  # GET /servicos_mulheres/1.json
  def show
  end

  # GET /servicos_mulheres/new
  def new
    @servicos_mulhere = ServicosMulhere.new
  end

  # GET /servicos_mulheres/1/edit
  def edit
  end

  # POST /servicos_mulheres
  # POST /servicos_mulheres.json
  def create
    @servicos_mulhere = ServicosMulhere.new(servicos_mulhere_params)

    respond_to do |format|
      if @servicos_mulhere.save
        format.html { redirect_to @servicos_mulhere, notice: 'Servicos mulhere was successfully created.' }
        format.json { render :show, status: :created, location: @servicos_mulhere }
      else
        format.html { render :new }
        format.json { render json: @servicos_mulhere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicos_mulheres/1
  # PATCH/PUT /servicos_mulheres/1.json
  def update
    respond_to do |format|
      if @servicos_mulhere.update(servicos_mulhere_params)
        format.html { redirect_to @servicos_mulhere, notice: 'Servicos mulhere was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicos_mulhere }
      else
        format.html { render :edit }
        format.json { render json: @servicos_mulhere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicos_mulheres/1
  # DELETE /servicos_mulheres/1.json
  def destroy
    @servicos_mulhere.destroy
    respond_to do |format|
      format.html { redirect_to servicos_mulheres_url, notice: 'Servicos mulhere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicos_mulhere
      @servicos_mulhere = ServicosMulhere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicos_mulhere_params
      params.require(:servicos_mulhere).permit(:Titulo, :Descricao, :Nome, :Status)
    end
end
