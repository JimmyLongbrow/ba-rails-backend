class AirplanesController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def index
    render json: Airplane.all
  end

  def create
    @airplane = Airplane.new airplane_params
    @airplane.save
    redirect_to airplanes_path
  end

  private

  def airplane_params
    params.require(:airplane).permit(:name, :row, :column)

  end

end
