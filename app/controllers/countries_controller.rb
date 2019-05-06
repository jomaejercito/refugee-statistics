class CountriesController < ApplicationController
  def index
    @countries = Country.all

    respond_to do |f|
      f.html
    end
  end

  def show

    end
  end
end
