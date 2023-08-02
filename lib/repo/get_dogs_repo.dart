import 'package:dio/dio.dart';
import 'package:dogs_bloc_app/model/dogs_model.dart';

class GetDogsRepo {
  final Dio dio;
  GetDogsRepo({required this.dio});

  Future<DogsModel> grtDogsData({required int count}) async {
    final response = await dio.get('$count');
    return DogsModel.fromJson(response.data);
  }
}
