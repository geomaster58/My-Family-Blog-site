class TomAndMomsController < ApplicationController
  before_action :set_tom_and_mom, only: [:show, :edit, :update, :destroy]

  # GET /tom_and_moms
  # GET /tom_and_moms.json
  def index
    @tom_and_moms = TomAndMom.all
  end

  # GET /tom_and_moms/1
  # GET /tom_and_moms/1.json
  def show
  end

  # GET /tom_and_moms/new
  def new
    @tom_and_mom = TomAndMom.new
  end

  # GET /tom_and_moms/1/edit
  def edit
  end

  # POST /tom_and_moms
  # POST /tom_and_moms.json
  def create
    @tom_and_mom = TomAndMom.new(tom_and_mom_params)

    respond_to do |format|
      if @tom_and_mom.save
        format.html { redirect_to @tom_and_mom, notice: 'Tom and mom was successfully created.' }
        format.json { render :show, status: :created, location: @tom_and_mom }
      else
        format.html { render :new }
        format.json { render json: @tom_and_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tom_and_moms/1
  # PATCH/PUT /tom_and_moms/1.json
  def update
    respond_to do |format|
      if @tom_and_mom.update(tom_and_mom_params)
        format.html { redirect_to @tom_and_mom, notice: 'Tom and mom was successfully updated.' }
        format.json { render :show, status: :ok, location: @tom_and_mom }
      else
        format.html { render :edit }
        format.json { render json: @tom_and_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tom_and_moms/1
  # DELETE /tom_and_moms/1.json
  def destroy
    @tom_and_mom.destroy
    respond_to do |format|
      format.html { redirect_to tom_and_moms_url, notice: 'Tom and mom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tom_and_mom
      @tom_and_mom = TomAndMom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tom_and_mom_params
      params.require(:tom_and_mom).permit(:header, :body)
    end
end
