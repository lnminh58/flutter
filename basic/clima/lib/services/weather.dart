import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';

class Weather {
  static Future<dynamic> getCurrentLocationWeather() async {
    Location location = Location();
    await location.getDevicePosition();
    double latitude = location.latitude;
    double longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
      '$OPEN_WEATHER_BASE_URL?lat=134&lon=$longitude&appid=$WEATHER_API_KEY&units=metric',
    );

    var result = await networkHelper.getData();

    return result;
  }
}
