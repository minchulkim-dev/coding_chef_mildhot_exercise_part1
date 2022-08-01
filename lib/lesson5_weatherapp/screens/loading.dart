import 'package:coding_chef_mildhot_exercise/screens/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:coding_chef_mildhot_exercise/data/my_location.dart';
import 'package:coding_chef_mildhot_exercise/data/network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = '8d279219da7bebcd0f34db0524083420';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double? longitude3;
  double? latitude3;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    longitude3 = myLocation.longitude2;
    latitude3 = myLocation.latitude2;
    print(longitude3);
    print(latitude3);

    Network network = Network(
      'https://api.openweathermap.org/data/2.5/weather?lat=$latitude3&lon=$longitude3&appid=$apiKey&units=metric',
      'http://api.openweathermap.org/data/2.5/air_pollution?lat=$latitude3&lon=$longitude3&appid=$apiKey',
    );

    var weatherData = await network.getJsonData();
    var airData = await network.getAirData();

    if (!mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WeatherScreen(
            parsedWeatherData: weatherData,
            parsedAirData: airData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 80.0,
          ),
        ));
  }
}
