class LineItemsController < ApplicationController
  before_action :set_cart, only: [:create, :update]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

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
        redirect_to location_drugs_path(@location = params[:location_id]), alert: "No se pueden hacer pedidos de varios sectores, favor eliminar articulos del carrito o volver al sector #{ @cart.line_items.last.price.location.city_name}."
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
        format.js { render 'line_items/update.js', layout: false}
        format.html { redirect_to location_cart_path(@location = params[:location_id], @cart = session[:cart_id]), notice: 'Carrito actualizado.' }
      else
        ##format.html { render :edit }
        format.js @cart.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to location_cart_path(@location = params[:location_id], @cart = session[:cart_id]), notice: 'Medicina elimnada de tu carrito' }
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
      params.require(:line_item).permit(:price_id, :quantity, :insured, :payment_method)
    end
end
