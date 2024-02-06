import 'dart:convert';

import 'package:weather_bloc_app/data_layer/data_provider/weather_data_provider.dart';
import 'package:weather_bloc_app/data_layer/models/weather_models.dart';

class WeatherRepository{
  final WeatherDataProvider weatherDataProvider;
  WeatherRepository(this.weatherDataProvider);

    Future<WeatherModels> getCurrentWeather() async {
      print('Success 6');
    try {
      print('Success 7');
      String cityName = 'London';
      final weatherData = await weatherDataProvider.getCurrentWeather(cityName);
      print('Success 8');


      final data = jsonDecode(weatherData);
      print('Success 9');


      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }
      print('Success 10');


      return WeatherModels.fromMap(data);
      
    } catch (e) {
      print('Success 11');
      print(e.toString());
      throw e.toString();
    }
  }
}