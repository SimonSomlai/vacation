class VacationItinerariesController < ApplicationController
  before_action :set_vacation_itinerary, only: [:show, :edit, :update, :destroy]

  # GET /vacation_itineraries
  # GET /vacation_itineraries.json
  def index
    @vacation_itineraries = VacationItinerary.all
  end

  # GET /vacation_itineraries/1
  # GET /vacation_itineraries/1.json
  def show
  end

  # GET /vacation_itineraries/new
  def new
    @vacation_itinerary = VacationItinerary.new
  end

  # GET /vacation_itineraries/1/edit
  def edit
  end

  # POST /vacation_itineraries
  # POST /vacation_itineraries.json
  def create
    @vacation_itinerary = VacationItinerary.new(vacation_itinerary_params)

    respond_to do |format|
      if @vacation_itinerary.save
        format.html { redirect_to @vacation_itinerary, notice: 'Vacation itinerary was successfully created.' }
        format.json { render :show, status: :created, location: @vacation_itinerary }
      else
        format.html { render :new }
        format.json { render json: @vacation_itinerary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacation_itineraries/1
  # PATCH/PUT /vacation_itineraries/1.json
  def update
    respond_to do |format|
      if @vacation_itinerary.update(vacation_itinerary_params)
        format.html { redirect_to @vacation_itinerary, notice: 'Vacation itinerary was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacation_itinerary }
      else
        format.html { render :edit }
        format.json { render json: @vacation_itinerary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacation_itineraries/1
  # DELETE /vacation_itineraries/1.json
  def destroy
    @vacation_itinerary.destroy
    respond_to do |format|
      format.html { redirect_to vacation_itineraries_url, notice: 'Vacation itinerary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacation_itinerary
      @vacation_itinerary = VacationItinerary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacation_itinerary_params
      params.require(:vacation_itinerary).permit(:location, :start_date, :end_date, :travel_time, :name, :description, :need_vaccins)
    end
end
