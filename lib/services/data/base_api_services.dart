abstract class BaseApiServices {
  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters, Map<String, String>? headers});
  Future<dynamic> post(String url,
      {dynamic body, Map<String, String>? headers});
  Future<dynamic> put(String url, {dynamic body, Map<String, String>? headers});
  Future<dynamic> delete(String url,
      {dynamic body, Map<String, String>? headers});
}
