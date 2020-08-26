class FlightsController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def index
    render json: Flight.all
  end


  def create
    airplane = Airplane.create content: params[:content]
  end

end
