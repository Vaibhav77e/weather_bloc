class WeatherModels {
  final String currentTemp;
  final String currentSky;
  final String currentPressure;
  final String currentWindSpeed;
  final String currentHumidity;
  var hourlyForecast;
  var hourlySky;
  var hourlyTemp;

  WeatherModels(
      {required this.currentTemp,
      required this.currentSky,
      required this.currentPressure,
      required this.currentWindSpeed,
      required this.currentHumidity,
      required this.hourlyForecast,
      required this.hourlySky,
      required this.hourlyTemp
      });


  factory WeatherModels.fromMap(Map<String,dynamic> map){
      final currentWeatherData = map['list'][0];

      return WeatherModels(
        currentHumidity:currentWeatherData['main']['humidity'].toString(),
        currentPressure:currentWeatherData['main']['pressure'].toString(),
        currentSky:currentWeatherData['weather'][0]['main'].toString(),
        currentTemp:currentWeatherData['main']['temp'].toString(),
        currentWindSpeed:currentWeatherData['wind']['speed'].toString(),
        hourlyForecast: map['list'],
        hourlySky: map['list'],
        hourlyTemp: map['list'],
        );

  }
}
