import 'package:medicinesystem/app/data/models/User_model.dart';
import 'package:medicinesystem/app/data/services/api.dart';

class UserService {
  Api api = new Api("Users");

  void createUserWithId(User user, String id) {
    api.addDocumentWithId(id, user.toJson());
  }
}
