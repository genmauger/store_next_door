class FacilitySpacesController < ApplicationController
  before_action :set_facility_space, only: [ :show, :edit, :update, :destroy]

  # GET /facility_spaces
  # GET /facility_spaces.json
  def index
    if FacilitySpace.find_by(storage_facility_id: storage_facility.id)
      @facility_spaces = StorageFacility.where(storage_facility_id: storage_facility.id)
    end
  end


  # def index
  #   if StorageFacility.find_by(user_id: current_user.id)
  #     @storage_facilities = StorageFacility.where(user_id: current_user.id)
  #   end
  # end

  # GET /facility_spaces/1
  # GET /facility_spaces/1.json
  def show
  end

  # GET /facility_spaces/new
  def new
    @facility_space = FacilitySpace.new
    @facility_space.storage_facility = StorageFacility.find(params[:storage_facility_id])
  end

  # GET /facility_spaces/1/edit
  def edit
  end

  # POST /facility_spaces
  # POST /facility_spaces.json
  def create
    authorize @facility_space
    @facility_space = FacilitySpace.new(facility_space_params)
  
    # @facility_space.storage_facility = current_storage

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
      params.require(:facility_space).permit(:height, :width, :length, :rate, :image, :storage_facility_id)
    end
end
