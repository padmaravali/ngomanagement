class RtesController < ApplicationController
  before_action :set_rte, only: [:show, :edit, :update, :destroy]

  # GET /rtes
  # GET /rtes.json
  def index
    @rtes = Rte.all
  end

  # GET /rtes/1
  # GET /rtes/1.json
  def show
  end

  # GET /rtes/new
  def new
    @rte = Rte.new
  end

  # GET /rtes/1/edit
  def edit
  end

  # POST /rtes
  # POST /rtes.json
  def create
    @rte = Rte.new(rte_params)

    respond_to do |format|
      if @rte.save
        format.html { redirect_to @rte, notice: 'Rte was successfully created.' }
        format.json { render :show, status: :created, location: @rte }
      else
        format.html { render :new }
        format.json { render json: @rte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rtes/1
  # PATCH/PUT /rtes/1.json
  def update
    respond_to do |format|
      if @rte.update(rte_params)
        format.html { redirect_to @rte, notice: 'Rte was successfully updated.' }
        format.json { render :show, status: :ok, location: @rte }
      else
        format.html { render :edit }
        format.json { render json: @rte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rtes/1
  # DELETE /rtes/1.json
  def destroy
    @rte.destroy
    respond_to do |format|
      format.html { redirect_to rtes_url, notice: 'Rte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rte
      @rte = Rte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rte_params
      params.require(:rte).permit(:name, :place, :date, :organiser, :volunteer, :school)
    end
end
