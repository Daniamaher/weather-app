import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
           primarySwatch: Colors.blue,
           appBarTheme: AppBarTheme(
            color: Colors.blue, 
          ),
        ),
        home: HomeView(),
        
      ),
    );
  }


/*
MaterialColor getThemeColor(String condition){

 switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.blue;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.blueGrey;
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.lightBlue;
    case 'Patchy rain possible':
    case 'Patchy light drizzle':
    case 'Patchy light rain':
    case 'Light drizzle':
    case 'Light rain':
      return Colors.lightGreen;
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Moderate or heavy rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Torrential rain shower':
    case 'Moderate or heavy rain shower':
    case 'Light rain shower':
      return Colors.green;
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.blue;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.yellow;
    default:
      return Colors.blue;


}

}
*/

}
