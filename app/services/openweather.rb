module Openweather
  class Search
    def self.by_location(location)
      Faraday.get 'https://api.openweathermap.org/data/2.5/weather?q=' + location + '&appid=' + ENV['WEATHER_API_KEY'] + '&units=metric'
    end
  end
end