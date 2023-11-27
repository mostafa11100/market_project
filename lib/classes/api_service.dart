import 'package:dio/dio.dart';

Future<Response> api_dio(
    {required url, required body, required token, contenttype}) async {
  Dio dio = Dio();
  var response = await dio.post(url!,
      data: body,
      options: Options(
          contentType: contenttype,
          headers: {"Authorization": "Bearer $token"}));
  return response;
}
