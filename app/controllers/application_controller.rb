class ApplicationController < ActionController::Base

  def set_destination
    @destination = Destination.find(params[:id])
  end

end
