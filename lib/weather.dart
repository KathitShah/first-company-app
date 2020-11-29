import 'package:bhailu_mama_app/networking.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String apiKey = '5e9daa843ae23c453e9be99ccf937f53';
String stringURL =
    'http://api.openweathermap.org/data/2.5/weather?lat=49.94&lon=-96.84&appid=$apiKey&units=metric';
String forecastURL =
    'http://api.openweathermap.org/data/2.5/forecast?lat=49.94&lon=-96.84&appid=$apiKey&units=metric';

class WeatherModel {
  Future<dynamic> getCityWeather() async {
    NetworkHelper networkHelper = NetworkHelper('$stringURL');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getForecastWeather() async {
    NetworkHelper networkHelper = NetworkHelper('$forecastURL');

    var forecastData = await networkHelper.getData();
    return forecastData;
  }

  IconData getWeatherIcon(String condition) {
    if (condition == '01d') {
      return FontAwesomeIcons.solidSun;
    } else if (condition == '02d') {
      return FontAwesomeIcons.cloudSun;
    } else if (condition == '03d') {
      return FontAwesomeIcons.cloud;
    } else if (condition == '04d') {
      return FontAwesomeIcons.cloud;
    } else if (condition == '09d') {
      return FontAwesomeIcons.cloudRain;
    } else if (condition == '10d') {
      return FontAwesomeIcons.cloudSunRain;
    } else if (condition == '11d') {
      return FontAwesomeIcons.cloudShowersHeavy;
    } else if (condition == '13d') {
      return FontAwesomeIcons.snowflake;
    } else if (condition == '01n') {
      return FontAwesomeIcons.solidMoon;
    } else if (condition == '02n') {
      return FontAwesomeIcons.cloudMoon;
    } else if (condition == '03n') {
      return FontAwesomeIcons.cloud;
    } else if (condition == '04n') {
      return FontAwesomeIcons.cloud;
    } else if (condition == '09n') {
      return FontAwesomeIcons.cloudRain;
    } else if (condition == '10n') {
      return FontAwesomeIcons.cloudMoonRain;
    } else if (condition == '11n') {
      return FontAwesomeIcons.cloudShowersHeavy;
    } else if (condition == '13n') {
      return FontAwesomeIcons.snowflake;
    } else {
      return FontAwesomeIcons.wind;
    }
  }
}
