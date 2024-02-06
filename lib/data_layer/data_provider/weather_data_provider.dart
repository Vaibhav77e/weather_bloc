import '../../secrets.dart';
import 'package:http/http.dart' as http;

class WeatherDataProvider{

    Future<String> getCurrentWeather(String cityName) async {
      print('Success 12');
    try {
      print('Success 13');
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey',
        ),
      );
      print('Success 14');
      print(res.body);
      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}