import 'package:sunimo_app/repositories/user_database_interface.dart';
import '../models/user.dart';

class UserLocalRepo implements UserDatabaseInterface {


  List<User> users = [
    User(email: "fluxi@fluxania.de", username: "fluxi", password: "geheim123", uniqueId: "1", pincode: 1234),
    User(email: "gerry@fluxania.de", username: "gerry", password: "123geheim", uniqueId: "2", pincode: 4321),
  ];


    @override
  bool create(User user){
    return true;
  }
   @override
  bool update(User user){
    return true;
  }
   @override
  bool delete(String uniqueId){
    return true;
  }

  @override
  User? getById(String uniqueId){
    return null;
  }

  @override
  User? getByUsername(String username){
     return users
        .where((user) =>  user.username == username)
        .cast<User?>()
        .firstWhere((user) => user != null, orElse: () => null);
  }

    @override
  User? getByEmail(String email){
     return users
        .where((user) =>  user.email == email)
        .cast<User?>()
        .firstWhere((user) => user != null, orElse: () => null);
  }

}