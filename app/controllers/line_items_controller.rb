class LineItemsController < ApplicationController
  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  skip_before_filter :set_location

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
    unless @cart.line_items.empty?
      if @cart.line_items.first.price.location_id == params[:location_id].to_i
        price = Price.find(params[:price_id])
        @line_item = @cart.line_items.build(price_id: price.id)
        @cart.save
        respond_to do |format|
          if @line_item.save
            format.html { redirect_to location_drugs_path(@location = @line_item.price.location_id), notice: "#{@line_item.price.drug.name} fue agregado a tu carrito." }
          else
            format.html { redirect_to location_drugs_path(@location = @line_item.price.location_id), alert: 'Error al agregar tu medicina al carrito intenta de nuevo.' }
          end
        end
      else
        redirect_to location_drugs_path(@location = params[:location_id]), alert: 'Medicinas tienen que ser de la misma ciudad.'
      end
    else
      price = Price.find(params[:price_id])
      @line_item = @cart.line_items.build(price_id: price.id)
      @cart.save
      respond_to do |format|
        if @line_item.save
          format.html { redirect_to location_drugs_path(@location = @line_item.price.location_id), notice: "#{@line_item.price.drug.name} fue agregado a tu carrito." }
        else
          format.html { redirect_to location_drugs_path(@location = @line_item.price.location_id), alert: 'Error al agregar tu medicina al carrito intenta de nuevo.' }
        end
      end
    end
  end
  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to cart_path(@cart = session[:cart_id]), notice: 'Carrito actualizado.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart = session[:cart_id]), notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:price_id, :quantity)
    end
end
