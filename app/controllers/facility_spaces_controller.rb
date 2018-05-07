class FacilitySpacesController < ApplicationController
  before_action :set_facility_space, only: [:show, :edit, :update, :destroy]

  # GET /facility_spaces
  # GET /facility_spaces.json
  def index
    @facility_spaces = FacilitySpace.all
  end

  # GET /facility_spaces/1
  # GET /facility_spaces/1.json
  def show
  end

  # GET /facility_spaces/new
  def new
    @facility_space = FacilitySpace.new
  end

  # GET /facility_spaces/1/edit
  def edit
  end

  # POST /facility_spaces
  # POST /facility_spaces.json
  def create
    @facility_space = FacilitySpace.new(facility_space_params)

    respond_to do |format|
      if @facility_space.save
        format.html { redirect_to @facility_space, notice: 'Facility space was successfully created.' }
        format.json { render :show, status: :created, location: @facility_space }
      else
        format.html { render :new }
        format.json { render json: @facility_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facility_spaces/1
  # PATCH/PUT /facility_spaces/1.json
  def update
    respond_to do |format|
      if @facility_space.update(facility_space_params)
        format.html { redirect_to @facility_space, notice: 'Facility space was successfully updated.' }
        format.json { render :show, status: :ok, location: @facility_space }
      else
        format.html { render :edit }
        format.json { render json: @facility_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facility_spaces/1
  # DELETE /facility_spaces/1.json
  def destroy
    @facility_space.destroy
    respond_to do |format|
      format.html { redirect_to facility_spaces_url, notice: 'Facility space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility_space
      @facility_space = FacilitySpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_space_params
      params.require(:facility_space).permit(:height, :width, :length, :rate, :image_data, :storage_facility_id)
    end
end
