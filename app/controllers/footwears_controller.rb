class FootwearsController < ApplicationController
  before_action :set_footwear, only: [:show, :edit, :update, :destroy]

  # GET /footwears
  # GET /footwears.json
  def index
    @footwears = Footwear.all
  end

  # GET /footwears/1
  # GET /footwears/1.json
  def show
  end

  # GET /footwears/new
  def new
    @footwear = Footwear.new
  end

  # GET /footwears/1/edit
  def edit
  end

  # POST /footwears
  # POST /footwears.json
  def create
    @footwear = Footwear.new(footwear_params)
    respond_to do |format|
      if @footwear.save
        format.html { redirect_to @footwear, notice: 'Footwear was successfully created.' }
        format.json { render :show, status: :created, location: @footwear }
      else
        format.html { render :new }
        format.json { render json: @footwear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footwears/1
  # PATCH/PUT /footwears/1.json
  def update
    respond_to do |format|
      if @footwear.update(footwear_params)
        format.html { redirect_to @footwear, notice: 'Footwear was successfully updated.' }
        format.json { render :show, status: :ok, location: @footwear }
      else
        format.html { render :edit }
        format.json { render json: @footwear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footwears/1
  # DELETE /footwears/1.json
  def destroy
    @footwear.destroy
    respond_to do |format|
      format.html { redirect_to footwears_url, notice: 'Footwear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footwear
      @footwear = Footwear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footwear_params
      params.require(:footwear).permit(:sku, :trademark_id, :category_id, :color_id, :stock, :stock_warning, :wholesale_price, :retail_price, :active, :short_description, :long_description, :footwear_picture_uri, :release_date, :release_country_id, :size_id, :weight, :season_id)
    end
end
