import 'dart:convert';
import 'package:ezycourse/services/data/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices implements BaseApiServices {
  @override
  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, String>? headers,
      context}) async {
    final uri = Uri.parse(url).replace(queryParameters: queryParameters);
    final response = await http.get(uri, headers: headers);
    return _handleResponse(response);
  }

  @override
  Future<dynamic> post(String url,
      {body, Map<String, String>? headers, context}) async {
    final response = await http.post(Uri.parse(url),
        body: jsonEncode(body), headers: headers);
    return _handleResponse(response);
  }

  @override
  Future<dynamic> put(String url,
      {body, Map<String, String>? headers, context}) async {
    final response = await http.put(Uri.parse(url),
        body: jsonEncode(body), headers: headers);
    return _handleResponse(response);
  }

  @override
  Future<dynamic> delete(String url,
      {body, Map<String, String>? headers, context}) async {
    final response = await http.delete(Uri.parse(url), headers: headers);
    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 201:
        return json.decode(response.body);
      case 204:
        return json.decode(response.body);
      case 400:
        throw Exception('Bad Request');
      case 401:
        throw Exception('Unauthorized');
      case 403:
        throw Exception('Forbidden');
      case 404:
        throw Exception('Not Found');
      case 500:
        throw Exception('Internal Server Error');
      default:
        throw Exception('Error');
    }
  }
}
