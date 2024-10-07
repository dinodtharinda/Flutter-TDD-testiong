
import 'package:http/http.dart' as http;
import 'package:flutter_tdd_testing/features/weather/domain/repositories/weather_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
   WeatherRepository,
  
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)

void main() {}