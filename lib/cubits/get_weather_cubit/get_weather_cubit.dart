import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/widgets/Services/models/weather_model.dart';
import 'package:weather_app/widgets/Services/weather_service.dart';

class GetWeatherCubit extends Cubit <WeatherState>{
  GetWeatherCubit() : super(NoWeatherState());
late WeatherModel weatherModel;
getWeather({required String cityName }) async{

   try {
  weatherModel=await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
     emit(WeatherLoadedState()); 

}

  catch (e) {
       emit(WeatherFailureState()); 
}


}

}