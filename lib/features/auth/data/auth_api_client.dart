import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:s_ticket/config/http_client.dart';
import '../../result_type.dart';
import '../dtos/login_dto.dart';
import '../dtos/login_success_dto.dart';
import '../dtos/register_dto.dart';

class AuthApiClient {
  final Dio dio;

  AuthApiClient(this.dio);

  Future<LoginSuccessDto> login(LoginDto loginDto) async {
    try {
      await setHeaders(dio);

      final response = await dio.post(
        '/auth/login',
        data: loginDto.toJson(),
      );

      return LoginSuccessDto.fromJson(response.data);
    } on DioException catch (e) {
        if (e.response != null) {
          throw Exception(e.response!.data['message']);
        } else {
          throw Exception(e.message);
        }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> register(RegisterDto registerDto) async {
    try {
      setHeaders(dio);

      await dio.post(
        '/auth/register',
        data: registerDto.toJson(),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['message']);
      } else {
        throw Exception(e.message);
      }
    } catch (e) {
      throw Exception(e);
    }

  }
}
