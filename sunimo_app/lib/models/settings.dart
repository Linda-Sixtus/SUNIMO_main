import '../repositories/category_database_interface.dart';
import '../repositories/category_local_repo.dart';
//import '../repositories/category_db_repo.dart';

import '../repositories/products_database_interface.dart';
import '../repositories/products_local_repo.dart';
//import '../repositories/products_db_repo.dart';

import '../repositories/interiors_database_interface.dart';
import '../repositories/interiors_local_repo.dart';
//import '../repositories/interiors_db_repo.dart';

import '../repositories/characters_database_interface.dart';
import '../repositories/characters_local_repo.dart';
//import '../repositories/characters_db_repo.dart';

import '../repositories/rooms_database_interface.dart';
import '../repositories/rooms_local_repo.dart';
//import '../repositories/rooms_db_repo.dart';

import '../repositories/user_database_interface.dart';
import '../repositories/user_local_repo.dart';
//import '../repositories/user_db_repo.dart';


class Settings {

   static CategoryDatabaseInterface categoryRepo = CategoryLocalRepo();  // CategoryDbRepo();
   static ProductsDatabaseInterface productsRepo = ProductsLocalRepo();  // ProductsDbRepo();
   static InteriorsDatabaseInterface interiorsRepo = InteriorsLocalRepo();  // InteriorsDbRepo();
   static CharactersDatabaseInterface charactersRepo = CharactersLocalRepo();  // CharactersDbRepo();
   static RoomsDatabaseInterface roomsRepo = RoomsLocalRepo();  // RoomsDbRepo();
   static UserDatabaseInterface userRepo = UserLocalRepo();  // UserDbRepo();
}