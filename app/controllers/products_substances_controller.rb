class ProductsSubstancesController < ApplicationController
  before_action :set_products_substance, only: [:show, :edit, :update, :destroy]

  # GET /products_substances
  # GET /products_substances.json
  def index
    @products_substances = ProductsSubstance.where(product_id: params[:id])
  end

  # GET /products_substances/1
  # GET /products_substances/1.json
  def show
  end

  # GET /products_substances/new
  def new
    @products_substance = ProductsSubstance.new
  end

  # GET /products_substances/1/edit
  def edit
  end

  # POST /products_substances
  # POST /products_substances.json
  def create
    @products_substance = ProductsSubstance.new(products_substance_params)
    puts "hola"
    respond_to do |format|
      if @products_substance.save
        format.html { redirect_to @products_substance, notice: 'Products substance was successfully created.' }
        format.json { render :show, status: :created, location: @products_substance }
      else
        format.html { render :new }
        format.json { render json: @products_substance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_substances/1
  # PATCH/PUT /products_substances/1.json
  def update
    respond_to do |format|
      if @products_substance.update(products_substance_params)
        format.html { redirect_to @products_substance, notice: 'Products substance was successfully updated.' }
        format.json { render :show, status: :ok, location: @products_substance }
      else
        format.html { render :edit }
        format.json { render json: @products_substance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_substances/1
  # DELETE /products_substances/1.json
  def destroy
    @products_substance.destroy
    respond_to do |format|
      format.html { redirect_to products_substances_url, notice: 'Products substance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_substance
      @products_substance = ProductsSubstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def products_substance_params
      params.require(:products_substance).permit(:product_id, :substance_id, :concentration, :units)
    end
end
