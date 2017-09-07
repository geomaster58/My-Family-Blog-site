class CodyAndAmandasController < ApplicationController
  before_action :set_cody_and_amanda, only: [:show, :edit, :update, :destroy]

  # GET /cody_and_amandas
  # GET /cody_and_amandas.json
  def index
    @cody_and_amandas = CodyAndAmanda.all
  end

  # GET /cody_and_amandas/1
  # GET /cody_and_amandas/1.json
  def show
  end

  # GET /cody_and_amandas/new
  def new
    @cody_and_amanda = CodyAndAmanda.new
  end

  # GET /cody_and_amandas/1/edit
  def edit
  end

  # POST /cody_and_amandas
  # POST /cody_and_amandas.json
  def create
    @cody_and_amanda = CodyAndAmanda.new(cody_and_amanda_params)

    respond_to do |format|
      if @cody_and_amanda.save
        format.html { redirect_to @cody_and_amanda, notice: 'Cody and amanda was successfully created.' }
        format.json { render :show, status: :created, location: @cody_and_amanda }
      else
        format.html { render :new }
        format.json { render json: @cody_and_amanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cody_and_amandas/1
  # PATCH/PUT /cody_and_amandas/1.json
  def update
    respond_to do |format|
      if @cody_and_amanda.update(cody_and_amanda_params)
        format.html { redirect_to @cody_and_amanda, notice: 'Cody and amanda was successfully updated.' }
        format.json { render :show, status: :ok, location: @cody_and_amanda }
      else
        format.html { render :edit }
        format.json { render json: @cody_and_amanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cody_and_amandas/1
  # DELETE /cody_and_amandas/1.json
  def destroy
    @cody_and_amanda.destroy
    respond_to do |format|
      format.html { redirect_to cody_and_amandas_url, notice: 'Cody and amanda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cody_and_amanda
      @cody_and_amanda = CodyAndAmanda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cody_and_amanda_params
      params.require(:cody_and_amanda).permit(:header, :body)
    end
end
