import 'package:flutter_bloc_3_les/models/user.dart';
import 'package:flutter_bloc_3_les/services/user_api_provider.dart';

class UsersRepository {
  UserProvider _usersProvider = UserProvider();
 Future<List<User>> getAllUsers()=> _usersProvider.getUser();
}