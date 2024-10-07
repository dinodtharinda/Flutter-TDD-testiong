import 'dart:convert';

import 'package:flutter_tdd_testing/features/weather/data/models/weather_model.dart';
import 'package:flutter_tdd_testing/features/weather/domain/entities/weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helper/json_reader.dart';

void main() {
  const testWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clear',
    description: 'clear sky',
    iconCode: '01n',
    temperature: 292.87,
    pressure: 1012,
    humidity: 70,
  );

  test("should be a subclass of weather entity", () async {
    //assert
    expect(testWeatherModel, isA<WeatherEntity>());
  });

  test('should return a valid model from json', () async {
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helper/dummy_data/dummy_weahter_response.json'),
    );

    final result = WeatherModel.fromJson(jsonMap);

    expect(result, equals(testWeatherModel));
  });

  test('should return a json map containing proper data', () async {
    final result = testWeatherModel.toJson();

    final expectedJsonMap = {
      'weather': [
        {
          'main': 'Clear',
          'description': 'clear sky',
          'icon': '01n',
        }
      ],
      'main': {
        'temp': 292.87,
        'pressure': 1012,
        'humidity': 70,
      },
      'name': 'New York',
    };

    expect(result, expectedJsonMap);
  });
}
