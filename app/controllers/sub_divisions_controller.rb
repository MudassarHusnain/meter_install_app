class SubDivisionsController < ApplicationController
  before_action :set_sub_division, only: %i[ show edit update destroy ]

  # GET /sub_divisions or /sub_divisions.json
  def index
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_divisions = SubDivision.all
  end

  # GET /sub_divisions/1 or /sub_divisions/1.json
  def show
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
  end

  # GET /sub_divisions/new
  def new
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = @division.sub_divisions.new
  end

  # GET /sub_divisions/1/edit
  def edit
  end

  # POST /sub_divisions or /sub_divisions.json
  def create
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division = @division.sub_divisions.new(sub_division_params)

    respond_to do |format|
      if @sub_division.save
        format.html { redirect_to disco_region_division_sub_division_url(@disco,@region,@division,@sub_division), notice: "Sub division was successfully created." }
        format.json { render :show, status: :created, location: @sub_division }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_divisions/1 or /sub_divisions/1.json
  def update
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    respond_to do |format|
      if @sub_division.update(sub_division_params)
        format.html { redirect_to disco_region_division_sub_division_url(@disco,@region,@division,@sub_division), notice: "Sub division was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_division }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_divisions/1 or /sub_divisions/1.json
  def destroy
    @disco = Disco.find_by(params[:disco_id])
    @region = Region.find_by(params[:region_id])
    @division = Division.find_by(params[:division_id])
    @sub_division.destroy!

    respond_to do |format|
      format.html { redirect_to disco_region_division_sub_divisions_url(@disco,@region,@division), notice: "Sub division was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_division
      @sub_division = SubDivision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_division_params
      params.require(:sub_division).permit(:name, :division_id)
    end
end
