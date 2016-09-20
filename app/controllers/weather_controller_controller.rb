require 'open_weather'
class WeatherControllerController < ApplicationController
  def index
    options = { units: "metric", APPID: 'cdbaa06b52336ef3d5647654c0388d92' }
    @weather = OpenWeather::Current.city("Warsaw, PL", options)
  end
end
