import 'package:sunimo_app/repositories/characters_database_interface.dart';
import '../models/characters.dart';

class CharactersDbRepo implements CharactersDatabaseInterface {

    @override
    bool create(Sunimo sunimo) {
        return true;
    }

    @override
    bool update(Sunimo sunimo){
        return true;
    }

    @override
    bool delete(String uniqueKey){
        return true;
    }

    @override
    Sunimo? getById(String uniqueId) {
      return null;
    }

 }