import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = 'https://fakestoreapi.com/';
  Future<List<dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
  Future<List<dynamic>> post({required String endPoint}) async {
    Response response = await dio.post('$baseUrl$endPoint');
    return response.data;
  }
}
