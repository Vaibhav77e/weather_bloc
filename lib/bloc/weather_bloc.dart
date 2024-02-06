
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc_app/data_layer/models/weather_models.dart';
import 'package:weather_bloc_app/data_layer/repository/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent,WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc(this.weatherRepository):super(WeatherInitial()){
    on<WeatherFetched>(_getCurrentWeather);
  }

  void _getCurrentWeather(
  WeatherFetched weatherFetchedEvent,
  Emitter<WeatherState> emit)async{
    print('Success 1');
    emit(WeatherLoading());
    try{
      print('Success 2');
      final weather = await weatherRepository.getCurrentWeather();
      print('Success 3');
      emit(WeatherSuccess(weatherModels: weather));
      print('Success 4');
    }catch(e){
      print('Success 5');
      WeatherFailure(e.toString( ));
    }

  }
}