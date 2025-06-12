import 'dart:convert';
import 'package:all_cards_dashboard/api_services/app_execption.dart';
import 'package:http/http.dart' as http;

class ApiBaseHelper {
  final String baseUrl = "https://qa-api.habbiton.com/v1/";

  Future<dynamic> get(String url) async {
    final response = await http.get(Uri.parse(baseUrl + url));
    return _processResponse(response);
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred with code: ${response.statusCode}');
    }
  }
}
