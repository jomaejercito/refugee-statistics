class ApplicationController < ActionController::Base

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def set_origin
    @origin = Origin.find(params[:id])
  end

end
