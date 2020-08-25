class AirplanesController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def index
    render json: Airplane.all
  end

  def create
    airplane = Airplane.create content: params[:content]
    render json: airplane
  end
  
end
