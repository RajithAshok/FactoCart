// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShoppingCartStruct extends FFFirebaseStruct {
  ShoppingCartStruct({
    DocumentReference? proref,
    int? quantity,
    DocumentReference? userref,
    double? totalPrice,
    String? vendorsname,
    DateTime? createdAt,
    String? userAddress,
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
  DocumentReference? _proref;
  DocumentReference? get proref => _proref;
  set proref(DocumentReference? val) => _proref = val;
  bool hasProref() => _proref != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? val) => _userref = val;
  bool hasUserref() => _userref != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;
  void incrementTotalPrice(double amount) => _totalPrice = totalPrice + amount;
  bool hasTotalPrice() => _totalPrice != null;

  // "vendorsname" field.
  String? _vendorsname;
  String get vendorsname => _vendorsname ?? '';
  set vendorsname(String? val) => _vendorsname = val;
  bool hasVendorsname() => _vendorsname != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "userAddress" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  set userAddress(String? val) => _userAddress = val;
  bool hasUserAddress() => _userAddress != null;

  static ShoppingCartStruct fromMap(Map<String, dynamic> data) =>
      ShoppingCartStruct(
        proref: data['proref'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        userref: data['userref'] as DocumentReference?,
        totalPrice: castToType<double>(data['totalPrice']),
        vendorsname: data['vendorsname'] as String?,
        createdAt: data['created_at'] as DateTime?,
        userAddress: data['userAddress'] as String?,
      );

  static ShoppingCartStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ShoppingCartStruct.fromMap(data) : null;

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
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'userref': serializeParam(
          _userref,
          ParamType.DocumentReference,
        ),
        'totalPrice': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'vendorsname': serializeParam(
          _vendorsname,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'userAddress': serializeParam(
          _userAddress,
          ParamType.String,
        ),
      }.withoutNulls;

  static ShoppingCartStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShoppingCartStruct(
        proref: deserializeParam(
          data['proref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['product'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        userref: deserializeParam(
          data['userref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
        totalPrice: deserializeParam(
          data['totalPrice'],
          ParamType.double,
          false,
        ),
        vendorsname: deserializeParam(
          data['vendorsname'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        userAddress: deserializeParam(
          data['userAddress'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ShoppingCartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShoppingCartStruct &&
        proref == other.proref &&
        quantity == other.quantity &&
        userref == other.userref &&
        totalPrice == other.totalPrice &&
        vendorsname == other.vendorsname &&
        createdAt == other.createdAt &&
        userAddress == other.userAddress;
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

ShoppingCartStruct createShoppingCartStruct({
  DocumentReference? proref,
  int? quantity,
  DocumentReference? userref,
  double? totalPrice,
  String? vendorsname,
  DateTime? createdAt,
  String? userAddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ShoppingCartStruct(
      proref: proref,
      quantity: quantity,
      userref: userref,
      totalPrice: totalPrice,
      vendorsname: vendorsname,
      createdAt: createdAt,
      userAddress: userAddress,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ShoppingCartStruct? updateShoppingCartStruct(
  ShoppingCartStruct? shoppingCart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    shoppingCart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addShoppingCartStructData(
  Map<String, dynamic> firestoreData,
  ShoppingCartStruct? shoppingCart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (shoppingCart == null) {
    return;
  }
  if (shoppingCart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && shoppingCart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final shoppingCartData =
      getShoppingCartFirestoreData(shoppingCart, forFieldValue);
  final nestedData =
      shoppingCartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = shoppingCart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getShoppingCartFirestoreData(
  ShoppingCartStruct? shoppingCart, [
  bool forFieldValue = false,
]) {
  if (shoppingCart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(shoppingCart.toMap());

  // Add any Firestore field values
  shoppingCart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getShoppingCartListFirestoreData(
  List<ShoppingCartStruct>? shoppingCarts,
) =>
    shoppingCarts?.map((e) => getShoppingCartFirestoreData(e, true)).toList() ??
    [];
