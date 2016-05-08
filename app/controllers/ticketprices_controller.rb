class TicketpricesController < ApplicationController
  before_action :set_ticketprice, only: [:show, :edit, :update, :destroy]

  # GET /ticketprices
  # GET /ticketprices.json
  def index
    @ticketprices = Ticketprice.all
  end

  # GET /ticketprices/1
  # GET /ticketprices/1.json
  def show
  end

  # GET /ticketprices/new
  def new
    @ticketprice = Ticketprice.new
  end

  # GET /ticketprices/1/edit
  def edit
  end

  # POST /ticketprices
  # POST /ticketprices.json
  def create
    @ticketprice = Ticketprice.new(ticketprice_params)

    respond_to do |format|
      if @ticketprice.save
        format.html { redirect_to @ticketprice, notice: 'Ticketprice was successfully created.' }
        format.json { render :show, status: :created, location: @ticketprice }
      else
        format.html { render :new }
        format.json { render json: @ticketprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticketprices/1
  # PATCH/PUT /ticketprices/1.json
  def update
    respond_to do |format|
      if @ticketprice.update(ticketprice_params)
        format.html { redirect_to @ticketprice, notice: 'Ticketprice was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticketprice }
      else
        format.html { render :edit }
        format.json { render json: @ticketprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticketprices/1
  # DELETE /ticketprices/1.json
  def destroy
    @ticketprice.destroy
    respond_to do |format|
      format.html { redirect_to ticketprices_url, notice: 'Ticketprice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticketprice
      @ticketprice = Ticketprice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticketprice_params
      params.require(:ticketprice).permit(:visitor_type, :price)
    end
end
