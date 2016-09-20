class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :name, :temp_min, :temp_max, :country
end
