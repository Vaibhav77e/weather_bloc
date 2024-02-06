part of 'weather_bloc.dart';

abstract class WeatherState{}

class WeatherInitial extends WeatherState{}

class WeatherSuccess extends WeatherState{
  WeatherModels weatherModels;
  WeatherSuccess({required this.weatherModels});
}

class WeatherFailure extends WeatherState{
  String errorMessage;
  WeatherFailure(this.errorMessage);
}

class WeatherLoading extends WeatherState{}

