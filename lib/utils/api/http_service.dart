import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:petlyfe_mobile/utils/storage_service.dart';

class HttpService {
  // Fungsi untuk membuat header request
  static Map<String, String> getHeaders({bool includeBearer = false}) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    // Menambahkan Bearer token jika diperlukan
    if (includeBearer) {
      headers['Authorization'] =
          'Bearer ${StorageService.getToken("auth_token")}';
    }

    return headers;
  }

  // Fungsi untuk melakukan POST request
  static Future<http.Response> postRequest(
    String endpoint, {
    Map<String, dynamic>? body,
    bool includeBearer = false,
  }) async {
    try {
      final Uri url = Uri.parse('${dotenv.env["API_URL"]}$endpoint');
      final headers = getHeaders(includeBearer: includeBearer);
      final response = await http.post(
        url,
        headers: headers,
        body: json.encode(body),
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Fungsi untuk melakukan GET request
  static Future<http.Response> getRequest(String endpoint,
      {bool includeBearer = false}) async {
    try {
      final Uri url = Uri.parse('${dotenv.env["API_URL"]}$endpoint');
      final headers = getHeaders(includeBearer: includeBearer);
      final response = await http.get(
        url,
        headers: headers,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
