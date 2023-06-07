// 1
class WeatherCast {
  final String id;
  final List<Weather> weather;

  WeatherCast({
    required this.id,
    required this.weather,
  });

  factory WeatherCast.fromJson(Map<String, dynamic> json) {
    List<Weather> weatherList = [];
    for (var element in json["weather"]) {
      weatherList.add(Weather.fromJson(element));
    }
    return WeatherCast(
      id: json["id"],
      weather: weatherList,
    );
  }
}

class Weather {
  final String id;
  final String main;
  final String description;

  Weather({
    required this.id,
    required this.main,
    required this.description,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json["id"],
      main: json["main"],
      description: json["description"],
    );
  }
}

// 2
class StationsCast {
  final String temp;
  final List<Stations> stations;

  StationsCast({
    required this.temp,
    required this.stations,
  });

  factory StationsCast.fromJson(Map<String, dynamic> json) {
    List<Stations> stationsList = [];
    for (var element in json["stations"]) {
      stationsList.add(Stations.fromJson(element));
    }
    return StationsCast(
      temp: json["temp"],
      stations: stationsList,
    );
  }
}

class Stations {
  final String temp;
  final String pressure;
  final String humidity;
  final String temp_min;
  final String temp_max;

  Stations({
    required this.temp,
    required this.pressure,
    required this.humidity,
    required this.temp_min,
    required this.temp_max,
  });

  factory Stations.fromJson(Map<String, dynamic> json) {
    return Stations(
      temp: json["temp"],
      pressure: json["pressure"],
      humidity: json["humidity"],
      temp_min: json["temp_min"],
      temp_max: json["temp_max"],
    );
  }
}

// 3
class SysCast {
  final String type;
  final List<Sys> sys;

  SysCast({
    required this.type,
    required this.sys,
  });

  factory SysCast.fromJson(Map<String, dynamic> json) {
    List<Sys> sysList = [];
    for (var element in json["sys"]) {
      sysList.add(Sys.fromJson(element));
    }
    return SysCast(
      type: json["type"],
      sys: sysList,
    );
  }
}

class Sys {
  final String type;
  final String id;
  final String message;
  final String country;
  final String sunrise;
  final String sunset;


  Sys({
    required this.type,
    required this.id,
    required this.message,
    required this.country,
    required this.sunrise,
    required this.sunset,

  });

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: json["type"],
      id: json["id"],
      message: json["message"],
      country: json["country"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],

    );
  }
}