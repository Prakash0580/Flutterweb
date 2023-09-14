import 'package:notes/bck/api/api_method.dart';
import 'package:notes/bck/block/notes_cubit.dart';

class NotesRepo {
  Future<dynamic> getAllData() async {
    try {
      final res = await ApiMethod.getDioRequest(UrlName.getAllDataUrl);
      // print("Response Repo: ${res}");
      return res;
    } catch (e) {
      return e;
    }
  }

  Future<dynamic> getDataById({dynamic data}) async {
    try {
      final res = await ApiMethod.postDioRequest(UrlName.getAllDataUrl);
      print(res);

      return res;
    } catch (e) {
      return e;
    }
  }

  Future<dynamic> createData({dynamic data}) async {
    try {
      final res = await ApiMethod.postDioRequest(UrlName.createDataUrl);
      print(res);

      return res;
    } catch (e) {
      return e;
    }
  }
}
