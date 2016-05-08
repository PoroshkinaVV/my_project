class ShowroomCollectionsController < ApplicationController
  before_action :set_showroom_collection, only: [:show, :edit, :update, :destroy]

  # GET /showroom_collections
  # GET /showroom_collections.json
  def index
    @showroom_collections = ShowroomCollection.all
  end

  # GET /showroom_collections/1
  # GET /showroom_collections/1.json
  def show
  end

  # GET /showroom_collections/new
  def new
    @showroom_collection = ShowroomCollection.new
  end

  # GET /showroom_collections/1/edit
  def edit
  end

  # POST /showroom_collections
  # POST /showroom_collections.json
  def create
    @showroom_collection = ShowroomCollection.new(showroom_collection_params)

    respond_to do |format|
      if @showroom_collection.save
        format.html { redirect_to @showroom_collection, notice: 'Showroom collection was successfully created.' }
        format.json { render :show, status: :created, location: @showroom_collection }
      else
        format.html { render :new }
        format.json { render json: @showroom_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showroom_collections/1
  # PATCH/PUT /showroom_collections/1.json
  def update
    respond_to do |format|
      if @showroom_collection.update(showroom_collection_params)
        format.html { redirect_to @showroom_collection, notice: 'Showroom collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @showroom_collection }
      else
        format.html { render :edit }
        format.json { render json: @showroom_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showroom_collections/1
  # DELETE /showroom_collections/1.json
  def destroy
    @showroom_collection.destroy
    respond_to do |format|
      format.html { redirect_to showroom_collections_url, notice: 'Showroom collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showroom_collection
      @showroom_collection = ShowroomCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showroom_collection_params
      params.require(:showroom_collection).permit(:showroom_id_id, :collection_id_id)
    end
end
