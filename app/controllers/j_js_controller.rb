class JJsController < ApplicationController
  before_action :set_jj, only: [:show, :edit, :update, :destroy]

  # GET /jjs
  # GET /jjs.json
  def index
    @jjs = Jj.all
  end

  # GET /jjs/1
  # GET /jjs/1.json
  def show
  end

  # GET /jjs/new
  def new
    @jj = Jj.new
  end

  # GET /jjs/1/edit
  def edit
  end

  # POST /jjs
  # POST /jjs.json
  def create
    @jj = Jj.new(jj_params)

    respond_to do |format|
      if @jj.save
        format.html { redirect_to @jj, notice: 'Jj was successfully created.' }
        format.json { render :show, status: :created, location: @jj }
      else
        format.html { render :new }
        format.json { render json: @jj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jjs/1
  # PATCH/PUT /jjs/1.json
  def update
    respond_to do |format|
      if @jj.update(jj_params)
        format.html { redirect_to @jj, notice: 'Jj was successfully updated.' }
        format.json { render :show, status: :ok, location: @jj }
      else
        format.html { render :edit }
        format.json { render json: @jj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jjs/1
  # DELETE /jjs/1.json
  def destroy
    @jj.destroy
    respond_to do |format|
      format.html { redirect_to jjs_url, notice: 'Jj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jj
      @jj = Jj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jj_params
      params.require(:jj).permit(:header, :body)
    end
end
