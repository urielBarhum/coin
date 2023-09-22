import 'package:dio/dio.dart' hide Headers;
import 'package:frontend/models/coin.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://localhost:3000/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  static ApiService getApi() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    ApiService apiService = ApiService(dio);
    return apiService;
  }
  @GET("coins")
  Future<List<Coin>> getCoins();

  @GET("coins/{id}")
  Future<Coin> getOneCoin(@Path("id") String id);
}
