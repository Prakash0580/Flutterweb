import 'package:dio/dio.dart';

class ApiMethod {
  static getDioRequest(String url) async {
    try {
      Response response = await Dio().get(url);
      print("Loading.....");
      return response.data;
    } on DioException catch (e) {
      print("error");
      print(e);
      print(e.response?.data);
      return e.response?.data;
    }
  }

  static postDioRequest(String url, {dynamic data}) async {
    try {
      Response response = await Dio().post(url, data: data);
      print(response.data);
      return response.data;
    } on DioException catch (e) {
      print(e);
      return e.response?.data;
    }
  }
}

class UrlName {
  static const baseUrl = "https://notes-backend-rs1z.vercel.app/notes/";
  static const getAllDataUrl = "${baseUrl}getAll";
  static const getDataByIdUrl = '${baseUrl}get';
  static const createDataUrl = '${baseUrl}create';
  static const deleteDataUrl = '${baseUrl}delete';
}
