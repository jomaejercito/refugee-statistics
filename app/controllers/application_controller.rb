class ApplicationController < ActionController::Base

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def set_origin
    @origin = Origin.find(params[:id])
  end

  def set_country
    @country = Country.find(params[:id])
  end

  def find_country
    @country = Country.find_by(id: params[:destination_id])
  end

  def find_destination
    @destination = Destination.find_by(id: params[:destination_id])
  end

  def find_origin
    @origin = Origin.find_by(id: params[:origin_id])
  end

end
