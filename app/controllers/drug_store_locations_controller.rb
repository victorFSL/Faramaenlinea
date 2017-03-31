class DrugStoreLocationsController < ApplicationController
  before_action :set_drug_store_location, only: [:show, :edit, :update, :destroy]

  # GET /drug_store_locations
  # GET /drug_store_locations.json
  def index
    @drug_store_locations = DrugStoreLocation.all
  end

  # GET /drug_store_locations/1
  # GET /drug_store_locations/1.json
  def show
  end

  # GET /drug_store_locations/new
  def new
    @drug_store_location = DrugStoreLocation.new
  end

  # GET /drug_store_locations/1/edit
  def edit
  end

  # POST /drug_store_locations
  # POST /drug_store_locations.json
  def create
    @drug_store_location = DrugStoreLocation.new(drug_store_location_params)

    respond_to do |format|
      if @drug_store_location.save
        format.html { redirect_to @drug_store_location, notice: 'Drug store location was successfully created.' }
        format.json { render :show, status: :created, location: @drug_store_location }
      else
        format.html { render :new }
        format.json { render json: @drug_store_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drug_store_locations/1
  # PATCH/PUT /drug_store_locations/1.json
  def update
    respond_to do |format|
      if @drug_store_location.update(drug_store_location_params)
        format.html { redirect_to @drug_store_location, notice: 'Drug store location was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug_store_location }
      else
        format.html { render :edit }
        format.json { render json: @drug_store_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_store_locations/1
  # DELETE /drug_store_locations/1.json
  def destroy
    @drug_store_location.destroy
    respond_to do |format|
      format.html { redirect_to drug_store_locations_url, notice: 'Drug store location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug_store_location
      @drug_store_location = DrugStoreLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_store_location_params
      params.fetch(:drug_store_location, {})
    end
end
