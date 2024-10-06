import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/widgets/Services/models/weather_model.dart';

class WeatherService{

final Dio dio;
final String baseUrl='http://api.weatherapi.com/v1';
final String apiKey='1609799841f846979a7115130240402';
 WeatherService(this.dio);
Future<WeatherModel> getCurrentWeather({required String cityName}) async{
 

  try {
  Response response= await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName &days=1');
  
         WeatherModel weatherModel=WeatherModel.fromJson(response.data);
         return weatherModel;
} on DioException  catch (e) {
  // TODO
  final String errorMsg=e.response?.data['error']['message']??'opps there was an error ,try later ';
  throw Exception( errorMsg);
}
catch(e){
log(e.toString());
throw Exception('opps there was an error ,try later');

}
 
    //final String errorMsg=response.data['error']['message'];
      //  throw Exception(errorMsg);

   
 }

}