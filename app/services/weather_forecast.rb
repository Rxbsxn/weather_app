require 'open_weather'

class WeatherForecast < OpenWeather::Current
  def self.for_city(name)
    Info.new(city("#{name}, PL", options))
  end

  def self.options
    { units: 'metric', APPID: 'cdbaa06b52336ef3d5647654c0388d92' }
  end

  class Info < OpenStruct
    def temp_min
      main["temp_min"]
    end
  end
  #attributes :id, :name, :temp_min, :temp_max, :country
end
