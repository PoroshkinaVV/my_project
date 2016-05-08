class ShowpiecesController < ApplicationController
  before_action :set_showpiece, only: [:show, :edit, :update, :destroy]

  # GET /showpieces
  # GET /showpieces.json
  def index
    @showpieces = Showpiece.all
  end

  # GET /showpieces/1
  # GET /showpieces/1.json
  def show
  end

  # GET /showpieces/new
  def new
    @showpiece = Showpiece.new
  end

  # GET /showpieces/1/edit
  def edit
  end

  # POST /showpieces
  # POST /showpieces.json
  def create
    @showpiece = Showpiece.new(showpiece_params)

    respond_to do |format|
      if @showpiece.save
        format.html { redirect_to @showpiece, notice: 'Showpiece was successfully created.' }
        format.json { render :show, status: :created, location: @showpiece }
      else
        format.html { render :new }
        format.json { render json: @showpiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showpieces/1
  # PATCH/PUT /showpieces/1.json
  def update
    respond_to do |format|
      if @showpiece.update(showpiece_params)
        format.html { redirect_to @showpiece, notice: 'Showpiece was successfully updated.' }
        format.json { render :show, status: :ok, location: @showpiece }
      else
        format.html { render :edit }
        format.json { render json: @showpiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showpieces/1
  # DELETE /showpieces/1.json
  def destroy
    @showpiece.destroy
    respond_to do |format|
      format.html { redirect_to showpieces_url, notice: 'Showpiece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showpiece
      @showpiece = Showpiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showpiece_params
      params.require(:showpiece).permit(:name, :creation_century, :description, :insurance, :height, :width, :length, :temperature_control, :wet_control, :people_protection, :collection_id_id)
    end
end
