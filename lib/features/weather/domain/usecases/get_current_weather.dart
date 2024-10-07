import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_testing/core/error/failure.dart';
import 'package:flutter_tdd_testing/features/weather/domain/entities/weather.dart';
import 'package:flutter_tdd_testing/features/weather/domain/repositories/weather_repository.dart';


class GetCurrentWeatherUseCase {

  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository); 
  
  Future<Either<Failure,WeatherEntity>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}