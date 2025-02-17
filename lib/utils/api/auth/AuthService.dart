import 'dart:convert';

import 'package:petlyfe_mobile/utils/api/http_service.dart';
import 'package:petlyfe_mobile/utils/storage_service.dart';

class AuthService {
  Future<void> signIn(
      {required String email,
      required String password,
      required bool rememberMe}) async {
    try {
      final body = {
        'email': email,
        'password': password,
        "callbackURL": "",
        "rememberMe": rememberMe
      };

      final response =
          await HttpService.postRequest('/auth/sign-in/email', body: body);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        var token = data['token'];

        if (token != null) {
          StorageService.saveToken('auth_token', token);
        } else {
          throw Exception('Token tidak ditemukan dalam response');
        }
      } else {
        var data = json.decode(response.body);

        throw data['message'];
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final String name = email.split('@')[0];

      final body = {
        'name': name,
        'email': email,
        'password': password,
        "callbackURL": ""
      };

      final response =
          await HttpService.postRequest('/auth/sign-up/email', body: body);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        var token = data['token'];
        if (token != null) {
          StorageService.saveToken('auth_token', token);
        } else {
          throw Exception('Token tidak ditemukan dalam response');
        }
      } else {
        var data = json.decode(response.body);
        throw data['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  // Future<User> getProfile() async {
  //   try {
  //     final response =
  //         await HttpService.getRequest('/users/profile', includeBearer: true);
  //     var data = json.decode(response.body);

  //     if (response.statusCode == 200) {
  //       if (data['success'] == false) {
  //         throw Exception('Pengguna tidak disetujui: ${data['message']}');
  //       }

  //       return User.fromJson(data['data']);
  //     } else {
  //       throw data['message'];
  //     }
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  Future<void> logout() async {
    try {
      await StorageService.clearToken('auth_token');
    } catch (e) {
      rethrow;
    }
  }
}
