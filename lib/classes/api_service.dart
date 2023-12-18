import 'package:dio/dio.dart';

Future<Response?> apiDio(
    {required url, required body, contenttype, required header}) async {
  Dio dio = Dio();

  try {
    var response = await dio.post(url!,
        data: body,
        options: Options(contentType: contenttype, headers: header));

    return response;
  } catch (e) {
    return null;
  }
}
