class ChartsController < ApplicationController
  def new_countries
    render json: Country.group(:population).group_by_day(:completed_at).count.chart_json
  end

end
