import 'location.dart';
import 'networking.dart';

const String apiKey = 'a82c62be89e2ef24eb644b7237e6137f';
const String openWeatherMapURL =
    'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    String url = '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url: url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        url:
            '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return 'stormy 🌩';
    } else if (condition < 400) {
      return 'rainy 🌧';
    } else if (condition < 600) {
      return 'drizzly ☔️';
    } else if (condition < 700) {
      return 'icy ☃️';
    } else if (condition < 800) {
      return 'windy 🌫';
    } else if (condition == 800) {
      return 'sunny ☀️';
    } else if (condition <= 804) {
      return 'cloudy ☁️';
    } else {
      return 'idk 🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
