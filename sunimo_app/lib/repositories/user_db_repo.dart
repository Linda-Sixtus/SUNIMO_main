import 'package:sunimo_app/repositories/user_database_interface.dart';
import '../models/user.dart';

class UserDbRepo implements UserDatabaseInterface {

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
    return null;
  }

    @override
  User? getByEmail(String email){
    return null;
  }

}