import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_testing/core/error/failure.dart';
import 'package:flutter_tdd_testing/features/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  
  Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);
}