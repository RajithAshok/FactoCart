// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SumRefStruct extends FFFirebaseStruct {
  SumRefStruct({
    double? totalPrice,
    DocumentReference? userref,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalPrice = totalPrice,
        _userref = userref,
        super(firestoreUtilData);

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;
  void incrementTotalPrice(double amount) => _totalPrice = totalPrice + amount;
  bool hasTotalPrice() => _totalPrice != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? val) => _userref = val;
  bool hasUserref() => _userref != null;

  static SumRefStruct fromMap(Map<String, dynamic> data) => SumRefStruct(
        totalPrice: castToType<double>(data['totalPrice']),
        userref: data['userref'] as DocumentReference?,
      );

  static SumRefStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SumRefStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'totalPrice': _totalPrice,
        'userref': _userref,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'totalPrice': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'userref': serializeParam(
          _userref,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static SumRefStruct fromSerializableMap(Map<String, dynamic> data) =>
      SumRefStruct(
        totalPrice: deserializeParam(
          data['totalPrice'],
          ParamType.double,
          false,
        ),
        userref: deserializeParam(
          data['userref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
      );

  @override
  String toString() => 'SumRefStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SumRefStruct &&
        totalPrice == other.totalPrice &&
        userref == other.userref;
  }

  @override
  int get hashCode => const ListEquality().hash([totalPrice, userref]);
}

SumRefStruct createSumRefStruct({
  double? totalPrice,
  DocumentReference? userref,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SumRefStruct(
      totalPrice: totalPrice,
      userref: userref,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SumRefStruct? updateSumRefStruct(
  SumRefStruct? sumRef, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sumRef
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSumRefStructData(
  Map<String, dynamic> firestoreData,
  SumRefStruct? sumRef,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sumRef == null) {
    return;
  }
  if (sumRef.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sumRef.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sumRefData = getSumRefFirestoreData(sumRef, forFieldValue);
  final nestedData = sumRefData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sumRef.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSumRefFirestoreData(
  SumRefStruct? sumRef, [
  bool forFieldValue = false,
]) {
  if (sumRef == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sumRef.toMap());

  // Add any Firestore field values
  sumRef.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSumRefListFirestoreData(
  List<SumRefStruct>? sumRefs,
) =>
    sumRefs?.map((e) => getSumRefFirestoreData(e, true)).toList() ?? [];
