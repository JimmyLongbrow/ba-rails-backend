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

<<<<<<< HEAD
  def create
    airplane = Airplane.create content: params[:content]
=======
  def flight_params
    params.require(:flight).permit(:date, :flight_number, :origin, :destination, :airplane_id)
>>>>>>> bf20226f356225e0ee1f7d7d68a526ca2ac2b6b5
  end

end
