class FlightsController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.create content: params[:content]
  end

  def index
    render json: Flight.all
  end

  def destroy
  end

  private

  def flight_params
    params.require(:flight).permit(:date, :flight_number, :origin, :destination, :airplane_id)
  end

end
