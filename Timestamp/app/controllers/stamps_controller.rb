class StampsController < ApplicationController
  before_action :set_stamp, only: [:show, :edit, :update, :destroy]

  # GET /stamps
  # GET /stamps.json
  def index
    @stamps = Stamp.all
  end

  # GET /stamps/1
  # GET /stamps/1.json
  def show
  end

  # GET /stamps/new
  def new
    @profile = Profile.find(params[:profile_id])
    @stamp = Stamp.new
  end

  # GET /stamps/1/edit
  def edit
  end

  # POST /stamps
  # POST /stamps.json
  def create
    @stamp = Stamp.new(stamp_params)

    respond_to do |format|
      if @stamp.save
        format.html { redirect_to @stamp, notice: 'Stamp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stamp }
      else
        format.html { render action: 'new' }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stamps/1
  # PATCH/PUT /stamps/1.json
  def update
    respond_to do |format|
      if @stamp.update(stamp_params)
        format.html { redirect_to @stamp, notice: 'Stamp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stamps/1
  # DELETE /stamps/1.json
  def destroy
    @stamp.destroy
    respond_to do |format|
      format.html { redirect_to stamps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stamp_params
      params.require(:stamp).permit(:date_and_time, :subject, :event, :profile_id)
    end
end
