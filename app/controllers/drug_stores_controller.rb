class DrugStoresController < ApplicationController
  before_action :set_drug_store, only: [:show, :edit, :update, :destroy]
  before_action :set_drug

  # GET /drug_stores
  # GET /drug_stores.json
  def index
    @drug_stores = DrugStore.all
  end

  # GET /drug_stores/1
  # GET /drug_stores/1.json
  def show
  end

  # GET /drug_stores/new
  def new
    @drug_store = DrugStore.new
  end

  # GET /drug_stores/1/edit
  def edit
  end

  # POST /drug_stores
  # POST /drug_stores.json
  def create
    @drug_store = DrugStore.new(drug_store_params)
    @drug_store.drug_id = @drug.id
    respond_to do |format|
      if @drug_store.save
        format.html { redirect_to drug_path(@drug), notice: 'Drug store was successfully created.' }
        format.json { render :show, status: :created, location: @drug_store }
      else
        format.html { render :new }
        format.json { render json: @drug_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drug_stores/1
  # PATCH/PUT /drug_stores/1.json
  def update
    respond_to do |format|
      if @drug_store.update(drug_store_params)
        format.html { redirect_to drug_drug_store_path(@drug, @drug_store), notice: 'Drug store was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug_store }
      else
        format.html { render :edit }
        format.json { render json: @drug_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_stores/1
  # DELETE /drug_stores/1.json
  def destroy
    @drug_store.destroy
    respond_to do |format|
      format.html { redirect_to drug_stores_url, notice: 'Drug store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_drug
      @drug = Drug.find(params[:drug_id])
    end

    def set_drug_store
      @drug_store = DrugStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_store_params
      params.require(:drug_store).permit(:name, :address, :hours, :payment_options, :logo, :delivery_radius)
    end
end
