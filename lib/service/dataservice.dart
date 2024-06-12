import 'package:dio/dio.dart';
import 'package:quez2/model/comment_model.dart';

abstract class Service {
  Dio dio = Dio();
  String baseurl = "https://dummyjson.com/comments";
  late Response response;

  Future<List<CommentModel>> getComment();
}

class CommentsSerivceImp extends Service {
  @override
  Future<List<CommentModel>> getComment() async {
    try {
      response = await dio.get(baseurl);
      print(response);
      print(response.statusCode);
      if (response.statusCode == 200) {
        List<CommentModel> comments = List.generate(
          response.data['comments'].length,
          (index) => CommentModel.fromMap(response.data['comments'][index]),
        );
        return comments;
      } else {
        return [];
      }
    } on DioError catch (e) {
      print(e.message);
      return [];
    }
  }
}
