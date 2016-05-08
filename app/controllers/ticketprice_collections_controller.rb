class TicketpriceCollectionsController < ApplicationController
  before_action :set_ticketprice_collection, only: [:show, :edit, :update, :destroy]

  # GET /ticketprice_collections
  # GET /ticketprice_collections.json
  def index
    @ticketprice_collections = TicketpriceCollection.all
  end

  # GET /ticketprice_collections/1
  # GET /ticketprice_collections/1.json
  def show
  end

  # GET /ticketprice_collections/new
  def new
    @ticketprice_collection = TicketpriceCollection.new
  end

  # GET /ticketprice_collections/1/edit
  def edit
  end

  # POST /ticketprice_collections
  # POST /ticketprice_collections.json
  def create
    @ticketprice_collection = TicketpriceCollection.new(ticketprice_collection_params)

    respond_to do |format|
      if @ticketprice_collection.save
        format.html { redirect_to @ticketprice_collection, notice: 'Ticketprice collection was successfully created.' }
        format.json { render :show, status: :created, location: @ticketprice_collection }
      else
        format.html { render :new }
        format.json { render json: @ticketprice_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticketprice_collections/1
  # PATCH/PUT /ticketprice_collections/1.json
  def update
    respond_to do |format|
      if @ticketprice_collection.update(ticketprice_collection_params)
        format.html { redirect_to @ticketprice_collection, notice: 'Ticketprice collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticketprice_collection }
      else
        format.html { render :edit }
        format.json { render json: @ticketprice_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticketprice_collections/1
  # DELETE /ticketprice_collections/1.json
  def destroy
    @ticketprice_collection.destroy
    respond_to do |format|
      format.html { redirect_to ticketprice_collections_url, notice: 'Ticketprice collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticketprice_collection
      @ticketprice_collection = TicketpriceCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticketprice_collection_params
      params.require(:ticketprice_collection).permit(:ticketprice_id_id, :collection_id_id)
    end
end
