class DivisionsController < ApplicationController
  before_action :set_division, only: %i[show edit update destroy ]
  # GET /divisions or /divisions.json
  def index
    @region = Region.find_by(params[:region_id])
    @disco = Disco.find_by(params[:disco_id])
    @divisions = Division.all
  end

  # GET /divisions/1 or /divisions/1.json
  def show
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
  end

  # GET /divisions/new
  def new
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = @region.divisions.new
  end

  # GET /divisions/1/edit
  def edit
    @region = Region.find_by(params[:region_id])
    @disco = Disco.find_by(params[:disco_id])
  end

  # POST /divisions or /divisions.json
  def create
    @region = Region.find_by(params[:region_id])
    @disco = Disco.find_by(params[:disco_id])
    @division = @region.divisions.new(division_params)

    respond_to do |format|
      if @division.save
        format.html { redirect_to disco_region_division_url(@disco,@division,@division), notice: "Division was successfully created." }
        format.json { render :show, status: :created, location: @division }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divisions/1 or /divisions/1.json
  def update
    @region = Region.find_by(params[:region_id])
    @disco = Disco.find_by(params[:disco_id])
    respond_to do |format|
      if @division.update(division_params)
        format.html { redirect_to disco_region_division_url(@disco,@division,@division), notice: "Division was successfully updated." }
        format.json { render :show, status: :ok, location: @division }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisions/1 or /divisions/1.json
  def destroy
    @region = Region.find_by(params[:region_id])
    @disco = Disco.find_by(params[:disco_id])
    @division.destroy!

    respond_to do |format|
      format.html { redirect_to disco_region_divisions_url(@disco,@region), notice: "Division was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_division
      @division = Division.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_params
      params.require(:division).permit(:name, :region_id)
    end
end
