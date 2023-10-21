import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _cartitem = (await secureStorage.getStringList('ff_cartitem'))
              ?.map((x) {
                try {
                  return ShoppingCartStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartitem;
    });
    await _safeInitAsync(() async {
      _cartsum2 = (await secureStorage.getStringList('ff_cartsum2'))
              ?.map((x) {
                try {
                  return SumRefStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartsum2;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  List<ShoppingCartStruct> _cartitem = [];
  List<ShoppingCartStruct> get cartitem => _cartitem;
  set cartitem(List<ShoppingCartStruct> _value) {
    _cartitem = _value;
    secureStorage.setStringList(
        'ff_cartitem', _value.map((x) => x.serialize()).toList());
  }

  void deleteCartitem() {
    secureStorage.delete(key: 'ff_cartitem');
  }

  void addToCartitem(ShoppingCartStruct _value) {
    _cartitem.add(_value);
    secureStorage.setStringList(
        'ff_cartitem', _cartitem.map((x) => x.serialize()).toList());
  }

  void removeFromCartitem(ShoppingCartStruct _value) {
    _cartitem.remove(_value);
    secureStorage.setStringList(
        'ff_cartitem', _cartitem.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartitem(int _index) {
    _cartitem.removeAt(_index);
    secureStorage.setStringList(
        'ff_cartitem', _cartitem.map((x) => x.serialize()).toList());
  }

  void updateCartitemAtIndex(
    int _index,
    ShoppingCartStruct Function(ShoppingCartStruct) updateFn,
  ) {
    _cartitem[_index] = updateFn(_cartitem[_index]);
    secureStorage.setStringList(
        'ff_cartitem', _cartitem.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartitem(int _index, ShoppingCartStruct _value) {
    _cartitem.insert(_index, _value);
    secureStorage.setStringList(
        'ff_cartitem', _cartitem.map((x) => x.serialize()).toList());
  }

  List<SumRefStruct> _cartsum2 = [];
  List<SumRefStruct> get cartsum2 => _cartsum2;
  set cartsum2(List<SumRefStruct> _value) {
    _cartsum2 = _value;
    secureStorage.setStringList(
        'ff_cartsum2', _value.map((x) => x.serialize()).toList());
  }

  void deleteCartsum2() {
    secureStorage.delete(key: 'ff_cartsum2');
  }

  void addToCartsum2(SumRefStruct _value) {
    _cartsum2.add(_value);
    secureStorage.setStringList(
        'ff_cartsum2', _cartsum2.map((x) => x.serialize()).toList());
  }

  void removeFromCartsum2(SumRefStruct _value) {
    _cartsum2.remove(_value);
    secureStorage.setStringList(
        'ff_cartsum2', _cartsum2.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartsum2(int _index) {
    _cartsum2.removeAt(_index);
    secureStorage.setStringList(
        'ff_cartsum2', _cartsum2.map((x) => x.serialize()).toList());
  }

  void updateCartsum2AtIndex(
    int _index,
    SumRefStruct Function(SumRefStruct) updateFn,
  ) {
    _cartsum2[_index] = updateFn(_cartsum2[_index]);
    secureStorage.setStringList(
        'ff_cartsum2', _cartsum2.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartsum2(int _index, SumRefStruct _value) {
    _cartsum2.insert(_index, _value);
    secureStorage.setStringList(
        'ff_cartsum2', _cartsum2.map((x) => x.serialize()).toList());
  }

  List<DocumentReference> _proref = [];
  List<DocumentReference> get proref => _proref;
  set proref(List<DocumentReference> _value) {
    _proref = _value;
  }

  void addToProref(DocumentReference _value) {
    _proref.add(_value);
  }

  void removeFromProref(DocumentReference _value) {
    _proref.remove(_value);
  }

  void removeAtIndexFromProref(int _index) {
    _proref.removeAt(_index);
  }

  void updateProrefAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _proref[_index] = updateFn(_proref[_index]);
  }

  void insertAtIndexInProref(int _index, DocumentReference _value) {
    _proref.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
