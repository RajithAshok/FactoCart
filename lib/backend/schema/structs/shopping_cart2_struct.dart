// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShoppingCart2Struct extends FFFirebaseStruct {
  ShoppingCart2Struct({
    List<DocumentReference>? proref,
    List<int>? quantity,
    List<DocumentReference>? userref,
    List<double>? totalPrice,
    List<String>? vendorsname,
    List<DateTime>? createdAt,
    List<String>? userAddress,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _proref = proref,
        _quantity = quantity,
        _userref = userref,
        _totalPrice = totalPrice,
        _vendorsname = vendorsname,
        _createdAt = createdAt,
        _userAddress = userAddress,
        super(firestoreUtilData);

  // "proref" field.
  List<DocumentReference>? _proref;
  List<DocumentReference> get proref => _proref ?? const [];
  set proref(List<DocumentReference>? val) => _proref = val;
  void updateProref(Function(List<DocumentReference>) updateFn) =>
      updateFn(_proref ??= []);
  bool hasProref() => _proref != null;

  // "quantity" field.
  List<int>? _quantity;
  List<int> get quantity => _quantity ?? const [];
  set quantity(List<int>? val) => _quantity = val;
  void updateQuantity(Function(List<int>) updateFn) =>
      updateFn(_quantity ??= []);
  bool hasQuantity() => _quantity != null;

  // "userref" field.
  List<DocumentReference>? _userref;
  List<DocumentReference> get userref => _userref ?? const [];
  set userref(List<DocumentReference>? val) => _userref = val;
  void updateUserref(Function(List<DocumentReference>) updateFn) =>
      updateFn(_userref ??= []);
  bool hasUserref() => _userref != null;

  // "totalPrice" field.
  List<double>? _totalPrice;
  List<double> get totalPrice => _totalPrice ?? const [];
  set totalPrice(List<double>? val) => _totalPrice = val;
  void updateTotalPrice(Function(List<double>) updateFn) =>
      updateFn(_totalPrice ??= []);
  bool hasTotalPrice() => _totalPrice != null;

  // "vendorsname" field.
  List<String>? _vendorsname;
  List<String> get vendorsname => _vendorsname ?? const [];
  set vendorsname(List<String>? val) => _vendorsname = val;
  void updateVendorsname(Function(List<String>) updateFn) =>
      updateFn(_vendorsname ??= []);
  bool hasVendorsname() => _vendorsname != null;

  // "created_at" field.
  List<DateTime>? _createdAt;
  List<DateTime> get createdAt => _createdAt ?? const [];
  set createdAt(List<DateTime>? val) => _createdAt = val;
  void updateCreatedAt(Function(List<DateTime>) updateFn) =>
      updateFn(_createdAt ??= []);
  bool hasCreatedAt() => _createdAt != null;

  // "userAddress" field.
  List<String>? _userAddress;
  List<String> get userAddress => _userAddress ?? const [];
  set userAddress(List<String>? val) => _userAddress = val;
  void updateUserAddress(Function(List<String>) updateFn) =>
      updateFn(_userAddress ??= []);
  bool hasUserAddress() => _userAddress != null;

  static ShoppingCart2Struct fromMap(Map<String, dynamic> data) =>
      ShoppingCart2Struct(
        proref: getDataList(data['proref']),
        quantity: getDataList(data['quantity']),
        userref: getDataList(data['userref']),
        totalPrice: getDataList(data['totalPrice']),
        vendorsname: getDataList(data['vendorsname']),
        createdAt: getDataList(data['created_at']),
        userAddress: getDataList(data['userAddress']),
      );

  static ShoppingCart2Struct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ShoppingCart2Struct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'proref': _proref,
        'quantity': _quantity,
        'userref': _userref,
        'totalPrice': _totalPrice,
        'vendorsname': _vendorsname,
        'created_at': _createdAt,
        'userAddress': _userAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'proref': serializeParam(
          _proref,
          ParamType.DocumentReference,
          true,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
          true,
        ),
        'userref': serializeParam(
          _userref,
          ParamType.DocumentReference,
          true,
        ),
        'totalPrice': serializeParam(
          _totalPrice,
          ParamType.double,
          true,
        ),
        'vendorsname': serializeParam(
          _vendorsname,
          ParamType.String,
          true,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
          true,
        ),
        'userAddress': serializeParam(
          _userAddress,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static ShoppingCart2Struct fromSerializableMap(Map<String, dynamic> data) =>
      ShoppingCart2Struct(
        proref: deserializeParam<DocumentReference>(
          data['proref'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['product'],
        ),
        quantity: deserializeParam<int>(
          data['quantity'],
          ParamType.int,
          true,
        ),
        userref: deserializeParam<DocumentReference>(
          data['userref'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['user'],
        ),
        totalPrice: deserializeParam<double>(
          data['totalPrice'],
          ParamType.double,
          true,
        ),
        vendorsname: deserializeParam<String>(
          data['vendorsname'],
          ParamType.String,
          true,
        ),
        createdAt: deserializeParam<DateTime>(
          data['created_at'],
          ParamType.DateTime,
          true,
        ),
        userAddress: deserializeParam<String>(
          data['userAddress'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ShoppingCart2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ShoppingCart2Struct &&
        listEquality.equals(proref, other.proref) &&
        listEquality.equals(quantity, other.quantity) &&
        listEquality.equals(userref, other.userref) &&
        listEquality.equals(totalPrice, other.totalPrice) &&
        listEquality.equals(vendorsname, other.vendorsname) &&
        listEquality.equals(createdAt, other.createdAt) &&
        listEquality.equals(userAddress, other.userAddress);
  }

  @override
  int get hashCode => const ListEquality().hash([
        proref,
        quantity,
        userref,
        totalPrice,
        vendorsname,
        createdAt,
        userAddress
      ]);
}

ShoppingCart2Struct createShoppingCart2Struct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ShoppingCart2Struct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ShoppingCart2Struct? updateShoppingCart2Struct(
  ShoppingCart2Struct? shoppingCart2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    shoppingCart2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addShoppingCart2StructData(
  Map<String, dynamic> firestoreData,
  ShoppingCart2Struct? shoppingCart2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (shoppingCart2 == null) {
    return;
  }
  if (shoppingCart2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && shoppingCart2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final shoppingCart2Data =
      getShoppingCart2FirestoreData(shoppingCart2, forFieldValue);
  final nestedData =
      shoppingCart2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = shoppingCart2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getShoppingCart2FirestoreData(
  ShoppingCart2Struct? shoppingCart2, [
  bool forFieldValue = false,
]) {
  if (shoppingCart2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(shoppingCart2.toMap());

  // Add any Firestore field values
  shoppingCart2.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getShoppingCart2ListFirestoreData(
  List<ShoppingCart2Struct>? shoppingCart2s,
) =>
    shoppingCart2s
        ?.map((e) => getShoppingCart2FirestoreData(e, true))
        .toList() ??
    [];
