class DestinationsController < ApplicationController
  def index
    destinations = Destination.select(:name, :population, :id).order(population: :desc).limit(10)
    destination_countries = []
    # Iterate through the list of countries in the database and create an array of hashes that
    # stores the label for each country data plot and its population value.
    #The hash also stores the drill - down link for the city chart corresponding to each country
    # data plot.
    destinations.each do |destination|
    destination_countries.push({
        :label => destination.name,
        :value => destination.population,
        :link => "destinations/#{destination.id}"
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
                :caption => 'Top Countries of Destination for Refugees and Asylum Seekers',
                :xAxisname => 'Country',
                :yAxisName => 'Population',
                :theme => 'fusion',
            },
            # The data in the array of hashes is now stored in the `top_ten_populous_countries`
            # variable in the FusionCharts consumable format.
            :data => destination_countries
        }
    })
  end

  def show
  end
end
