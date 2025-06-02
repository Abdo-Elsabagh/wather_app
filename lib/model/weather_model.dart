class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String watherCondition;
  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.watherCondition});

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        watherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon']);
  }
}
