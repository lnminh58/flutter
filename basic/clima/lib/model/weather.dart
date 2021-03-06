class WeatherModel {
  WeatherModel({this.temperature, this.condition, this.cityName});

  int temperature;
  int condition;
  String cityName;

  String getWeatherIcon() {
    if (this.condition < 300) {
      return '🌩';
    } else if (this.condition < 400) {
      return '🌧';
    } else if (this.condition < 600) {
      return '☔️';
    } else if (this.condition < 700) {
      return '☃️';
    } else if (this.condition < 800) {
      return '🌫';
    } else if (this.condition == 800) {
      return '☀️';
    } else if (this.condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage() {
    if (this.temperature == null) {
      return 'unknow state';
    }

    if (this.temperature > 25) {
      return 'It\'s 🍦 time';
    } else if (this.temperature > 20) {
      return 'Time for shorts and 👕';
    } else if (this.temperature < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
