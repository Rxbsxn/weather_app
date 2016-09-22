require 'open_weather'
class WeatherForecast < OpenWeather::Current
  def self.for_city(name)
    Info.new(city("#{name}, PL", options))
  end

  def self.options
    { lang: 'pl', units: 'metric', APPID: 'cdbaa06b52336ef3d5647654c0388d92' }
  end

  class Info < OpenStruct
    def temp
      main['temp']
    end

    def humidity
      main['humidity']
    end

    def sunrise
      Time.zone.at(sys['sunrise'])
    end

    def sunset
      Time.zone.at(sys['sunset'])
    end

    def pressure
      main['pressure']
    end

    def speed
      wind['speed']
    end
  end
end
