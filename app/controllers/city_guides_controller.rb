class CityGuidesController < ApplicationController
  before_action :set_city_guide, only: [:show, :edit, :update, :destroy]

  # GET /city_guides
  # GET /city_guides.json
  def index
    @city_guides = CityGuide.all
  end

  # GET /city_guides/1
  # GET /city_guides/1.json
  def show
  end

  # GET /city_guides/new
  def new
    @city_guide = CityGuide.new
  end

  # GET /city_guides/1/edit
  def edit
  end

  # POST /city_guides
  # POST /city_guides.json
  def create
    @city_guide = CityGuide.new(city_guide_params)

    respond_to do |format|
      if @city_guide.save
        format.html { redirect_to @city_guide, notice: 'City guide was successfully created.' }
        format.json { render :show, status: :created, location: @city_guide }
      else
        format.html { render :new }
        format.json { render json: @city_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_guides/1
  # PATCH/PUT /city_guides/1.json
  def update
    respond_to do |format|
      if @city_guide.update(city_guide_params)
        format.html { redirect_to @city_guide, notice: 'City guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_guide }
      else
        format.html { render :edit }
        format.json { render json: @city_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_guides/1
  # DELETE /city_guides/1.json
  def destroy
    @city_guide.destroy
    respond_to do |format|
      format.html { redirect_to city_guides_url, notice: 'City guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_guide
      @city_guide = CityGuide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_guide_params
      params.require(:city_guide).permit(:city, :state, :country, :restaurants, :see, :skip, :stay, :tips, :post, :avatar)
    end
end
