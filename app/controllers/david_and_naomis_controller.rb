class DavidAndNaomisController < ApplicationController
  before_action :set_david_and_naomi, only: [:show, :edit, :update, :destroy]

  # GET /david_and_naomis
  # GET /david_and_naomis.json
  def index
    @david_and_naomis = DavidAndNaomi.all
  end

  # GET /david_and_naomis/1
  # GET /david_and_naomis/1.json
  def show
  end

  # GET /david_and_naomis/new
  def new
    @david_and_naomi = DavidAndNaomi.new
  end

  # GET /david_and_naomis/1/edit
  def edit
  end

  # POST /david_and_naomis
  # POST /david_and_naomis.json
  def create
    @david_and_naomi = DavidAndNaomi.new(david_and_naomi_params)

    respond_to do |format|
      if @david_and_naomi.save
        format.html { redirect_to @david_and_naomi, notice: 'David and naomi was successfully created.' }
        format.json { render :show, status: :created, location: @david_and_naomi }
      else
        format.html { render :new }
        format.json { render json: @david_and_naomi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /david_and_naomis/1
  # PATCH/PUT /david_and_naomis/1.json
  def update
    respond_to do |format|
      if @david_and_naomi.update(david_and_naomi_params)
        format.html { redirect_to @david_and_naomi, notice: 'David and naomi was successfully updated.' }
        format.json { render :show, status: :ok, location: @david_and_naomi }
      else
        format.html { render :edit }
        format.json { render json: @david_and_naomi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /david_and_naomis/1
  # DELETE /david_and_naomis/1.json
  def destroy
    @david_and_naomi.destroy
    respond_to do |format|
      format.html { redirect_to david_and_naomis_url, notice: 'David and naomi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_david_and_naomi
      @david_and_naomi = DavidAndNaomi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def david_and_naomi_params
      params.require(:david_and_naomi).permit(:header, :body)
    end
end
