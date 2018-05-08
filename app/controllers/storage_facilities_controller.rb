class StorageFacilitiesController < ApplicationController
  before_action :set_storage_facility, only: [:show, :update, :destroy]
  # before_action :edit_own_properties, only: [:edit]

  # GET /storage_facilities
  # GET /storage_facilities.json
  def index
    @storage_facilities = StorageFacility.all
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
    @storage_facility = StorageFacility.find(params[:id])
    authorize @storage_facility
  end

  # POST /storage_facilities
  # POST /storage_facilities.json
  def create
    authorize @storage_facility

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

  def edit_own_properties
    # @storage_facility.user_id = current_user.id
    
    # if current_user != @storage_facility.user
    #   redirect_to root_path, notice: "You can't edit someone else's profile"
    # end
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
