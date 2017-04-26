class DrugsController < ApplicationController
  include SearchFilter
  before_action :set_drug, only: [:show, :edit, :update, :destroy]
  before_action :set_state_city, :search_filter

  def index
    query = params[:q].presence || "*"
    @drugs = Drug.search(query)
  end

  def autocomplete
    render json: Drug.search(params[:term], {
      fields: ["name^10","active_ingredient"],
      match: :text_start,
      limit: 10,
      misspellings: {below: 3}
    }).map(&:name)
  
  end

  # GET /drugs/1
  # GET /drugs/1.json
  def show
  end

  # GET /drugs/new
  def new
    @drug = Drug.new
  end

  # GET /drugs/1/edit
  def edit
  end

  # POST /drugs
  # POST /drugs.json
  def create
    @drug = Drug.new(drug_params)

    respond_to do |format|
      if @drug.save
        format.html { redirect_to state_city_drug_path(@state,@city,@drug), notice: 'Drug was successfully created.' }
        format.json { render :show, status: :created, location: @drug }
      else
        format.html { render :new }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drugs/1
  # PATCH/PUT /drugs/1.json
  def update
    respond_to do |format|
      if @drug.update(drug_params)
        format.html { redirect_to state_city_drug_path(@state,@city,@drug), notice: 'Drug was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug }
      else
        format.html { render :edit }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drugs/1
  # DELETE /drugs/1.json
  def destroy
    @drug.destroy
    respond_to do |format|
      format.html { redirect_to drugs_url, notice: 'Drug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug
      @drug = Drug.find(params[:id])
    end

    def set_state_city
      @state = State.find(params[:state_id])
      @city = City.find(params[:city_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_params
      params.require(:drug).permit(:name, :picture, :doctor_name, :description, :metric, :dosage, :brand, prices_attributes: [:drug_id, :drug_store_id, :price])
    end
end
