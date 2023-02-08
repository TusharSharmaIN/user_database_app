import '../features/home/view/home_page.dart';
import '../features/users_list/view/user_list_page.dart';
import '../features/users/view/user_page.dart';
import 'routes.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.user: (context) => const UserPage(title: "Fetch a User"),
    Routes.usersList: (context) =>
        const UserListPage(title: "User's List Page"),
  };
}
