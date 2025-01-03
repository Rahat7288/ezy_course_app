import 'package:get_storage/get_storage.dart';

class LocalDataServices {
  static Future<void> init() async {
    await GetStorage.init();
  }

  final _box = GetStorage();

  Future<void> saveData(String key, dynamic data) async {
    await _box.write(key, data);
  }

  dynamic getData(String key) {
    return _box.read(key);
  }

  Future<void> removeData(String key) async {
    await _box.remove(key);
  }

  Future<void> clearData() async {
    await _box.erase();
  }
}
