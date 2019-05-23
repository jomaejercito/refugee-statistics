class OriginsController < ApplicationController
  def index
    origins = Origin.select(:country_id, :year_id, :population).order(population: :desc).where(year_id: 7).limit(10)
    origin_countries = []
    # Iterate through the list of countries in the database and create an array of hashes that
    # stores the label for each country data plot and its population value.
    #The hash also stores the drill - down link for the city chart corresponding to each country
    # data plot.
    origins.each do |origin|
    origin_countries.push({
        :label => origin.country.name,
        :value => origin.population,
        :link => "origins/#{origin.country.id}"
    })
    end
    # Create a new FusionCharts instance that initializes the chart height, width, type, container div
    # id, data source, and the data format
    @chart = Fusioncharts::Chart.new({
        :height => 500,
        :width => 900,
        :type => 'column2d',
        :renderAt => 'chart-container',
        # Chart data is passed to the `dataSource`parameter, as hashes, in the form of key - value pairs.
        :dataSource => {
            :chart => {
                :caption => 'Top Countries of Origin for Refugees and Asylum Seekers',
                :xAxisname => 'Country',
                :yAxisName => 'Population',
                :theme => 'fusion',
            },
            # The data in the array of hashes is now stored in the `origin_countries`
            # variable in the FusionCharts consumable format.
            :data => origin_countries
        }
    })
  end

  def show
    origins = Origin.select(:country_id, :year_id, :population).where(country_id: params[:id]).limit(7)
    origin_countries = []
    origins.each do |origin|
    origin_countries.push({
        :label => origin.year.year,
        :value => origin.population,
    })
    end

    @chart = Fusioncharts::Chart.new({
        :height => 500,
        :width => 900,
        :type => 'line',
        :renderAt => 'chart-container',
        :dataSource => {
            :chart => {
                :caption => 'Top Countries of Origin for Refugees and Asylum Seekers',
                :xAxisname => 'Year',
                :yAxisName => 'Population',
                :theme => 'ocean',
            },
            :data => origin_countries
        }
    })
  set_origin  
  end

end
