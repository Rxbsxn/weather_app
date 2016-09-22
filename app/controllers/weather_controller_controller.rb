class WeatherControllerController < ApplicationController
  def index
    @weather = WeatherForecast.for_city(params[:city])
  end
end
