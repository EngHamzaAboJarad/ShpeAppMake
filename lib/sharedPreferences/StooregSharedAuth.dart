import 'package:shared_preferences/shared_preferences.dart';

class storegAuthShared{
  storegAuthShared._();
  static final storegAuthShared _object =   storegAuthShared._();
  factory storegAuthShared(){
    return _object;
  }
  late SharedPreferences _sharedPreferences;
  Future<void>  InitialSharedPreferences()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  Future<void> SaveDataUsersFrom({ required email }) async{
    await _sharedPreferences.setString('email', email);
    await _sharedPreferences.setBool('isLogged', true);
  }
  String get emailUser => _sharedPreferences.getString('email') ?? '';
  bool get IsLogged => _sharedPreferences.getBool('isLogged') ?? false;
  Future<void> Clear()async{
   await _sharedPreferences.clear();
  }
}