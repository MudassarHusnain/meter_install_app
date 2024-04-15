class MetersController < ApplicationController
  before_action :set_meter, only: %i[ show edit update destroy ]

  # GET /meters or /meters.json
  def index
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_divisions_id])
    @meters = Meter.all
  end

  # GET /meters/1 or /meters/1.json
  def show
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_division_id])

  end

  # GET /meters/new
  def new
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_division_id])

    @meter = @sub_division.meters.new
  end

  # GET /meters/1/edit
  def edit
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_division_id])

  end

  # POST /meters or /meters.json
  def create
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_division_id])

    @meter = @sub_division.meters.new(meter_params)

    respond_to do |format|
      if @meter.save
        format.html { redirect_to disco_region_division_sub_division_meter_url(@disco,@region,@division,@sub_division,@meter), notice: "Meter was successfully created." }
        format.json { render :show, status: :created, location: @meter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meters/1 or /meters/1.json
  def update
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_division_id])

    respond_to do |format|
      if @meter.update(meter_params)
        format.html { redirect_to disco_region_division_sub_division_meter_url(@disco,@region,@division,@sub_division,@meter), notice: "Meter was successfully updated." }
        format.json { render :show, status: :ok, location: @meter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meters/1 or /meters/1.json
  def destroy
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = SubDivision.find_by(params[:sub_division_id])

    @meter.destroy!

    respond_to do |format|
      format.html { redirect_to disco_region_division_sub_division_meters_url(@disco,@region,@division,@sub_division), notice: "Meter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meter
      @meter = Meter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meter_params
      params.require(:meter).permit(:new_meter_number, :reference_no, :status, :older_meter_no, :old_meter_reading, :new_meter_reading, :connection_type, :bill_month, :longitude, :latitude, :sub_division_id, :meter_type, :kwh_mf, :sanction_load, :full_name, :address, :qc_check, :application_no, :green_meter, :telco, :sim_no, :signal_strength, :picture_upload)
    end
end
