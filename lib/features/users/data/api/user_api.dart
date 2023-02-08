import '../../../../services/network/constant/endpoints.dart';
import '../../../../services/network/dio_client.dart';

/// api class to communicate with users api using dio
/// must be called from a repository
class UserApi {
  final DioClient _dioClient;

  UserApi(this._dioClient);

  Future<Map<String, dynamic>> fetchUserFromAPI() async {
    try {
      final res = await _dioClient.dio.get(Endpoints.users);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
