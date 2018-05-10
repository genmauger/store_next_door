class StorageFacilitiesController < ApplicationController
  before_action :set_storage_facility, only: [:show, :edit, :update, :destroy]

  # GET /storage_facilities
  # GET /storage_facilities.json
  def index
    # if StorageFacility.find_by(user_id: current_user.id)
    #   @storage_facilities = StorageFacility.where(user_id: current_user.id)
    # end
    @storage_facilities = StorageFacility.all
    if params[:search]
      @storage_facilities = StorageFacility.search(params[:search]).order("created_at DESC")
    else
      @storage_facilities = StorageFacility.all.order("created_at DESC")
    end
  end

  # GET /storage_facilities/1
  # GET /storage_facilities/1.json
  def show
    #Only show uploads made by that user currently signed in
  end

  # GET /storage_facilities/new
  def new
    @storage_facility = StorageFacility.new
  end

  # GET /storage_facilities/1/edit
  def edit
    authorize @storage_facility
  end

  # POST /storage_facilities
  # POST /storage_facilities.json
  def create
    @storage_facility = StorageFacility.new(storage_facility_params)
    @storage_facility.user = current_user

    respond_to do |format|
      if @storage_facility.save
        format.html { redirect_to @storage_facility, notice: 'Storage facility was successfully created.' }
        format.json { render :show, status: :created, location: @storage_facility }
      else
        format.html { render :new }
        format.json { render json: @storage_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_facilities/1
  # PATCH/PUT /storage_facilities/1.json
  def update
    authorize @storage_facility
    respond_to do |format|
      if @storage_facility.update(storage_facility_params)
        format.html { redirect_to @storage_facility, notice: 'Storage facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @storage_facility }
      else
        format.html { render :edit }
        format.json { render json: @storage_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_facilities/1
  # DELETE /storage_facilities/1.json
  def destroy
    authorize @storage_facility
    @storage_facility.destroy
    respond_to do |format|
      format.html { redirect_to storage_facilities_url, notice: 'Storage facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage_facility
      @storage_facility = StorageFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storage_facility_params
      params.require(:storage_facility).permit(:street_address, :suburb, :postcode, :state, :country, :unlisted_at, :longitude, :latitude, :image, :user_id)
    end
end
