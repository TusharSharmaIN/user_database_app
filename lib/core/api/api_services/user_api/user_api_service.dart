import '../../api_client.dart';
import '../../api_constants/api_endpoints.dart';

/// api class to communicate with users api using dio
/// must be called from a repository
class UserApi {
  final ApiClient _apiClient;

  UserApi(this._apiClient);

  Future<Map<String, dynamic>> fetchUserFromAPI() async {
    try {
      final res = await _apiClient.dio.get(ApiEndpoints.users);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
