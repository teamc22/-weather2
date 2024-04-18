import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/weather_dto.dart';

class PhotoDataSource {
  final _baseUrl = 'https://pixabay.com/api/';

  Future<WeatherDto> getWearthResult(String query) async {

    final response = await http
        .get(Uri.parse('https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=37.5&longitude=126.9'));
    print('4월18일');
    print('목요일');
    print('${response}123sfdsdfasdfasfdasdf');
    print('${response}11111111dddddddddd1111');
    print('${response}11111111dddddddddd1111');
    print('${response}111111111111');
    print('${response}111111111111');
    return WeatherDto.fromJson(jsonDecode(response.body));
  }
}
