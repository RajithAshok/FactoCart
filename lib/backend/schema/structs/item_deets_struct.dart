// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemDeetsStruct extends FFFirebaseStruct {
  ItemDeetsStruct({
    DocumentReference? proref,
    int? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _proref = proref,
        _quantity = quantity,
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

  static ItemDeetsStruct fromMap(Map<String, dynamic> data) => ItemDeetsStruct(
        proref: data['proref'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
      );

  static ItemDeetsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ItemDeetsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'proref': _proref,
        'quantity': _quantity,
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
      }.withoutNulls;

  static ItemDeetsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemDeetsStruct(
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
      );

  @override
  String toString() => 'ItemDeetsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemDeetsStruct &&
        proref == other.proref &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([proref, quantity]);
}

ItemDeetsStruct createItemDeetsStruct({
  DocumentReference? proref,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemDeetsStruct(
      proref: proref,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ItemDeetsStruct? updateItemDeetsStruct(
  ItemDeetsStruct? itemDeets, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    itemDeets
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addItemDeetsStructData(
  Map<String, dynamic> firestoreData,
  ItemDeetsStruct? itemDeets,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itemDeets == null) {
    return;
  }
  if (itemDeets.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && itemDeets.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemDeetsData = getItemDeetsFirestoreData(itemDeets, forFieldValue);
  final nestedData = itemDeetsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = itemDeets.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getItemDeetsFirestoreData(
  ItemDeetsStruct? itemDeets, [
  bool forFieldValue = false,
]) {
  if (itemDeets == null) {
    return {};
  }
  final firestoreData = mapToFirestore(itemDeets.toMap());

  // Add any Firestore field values
  itemDeets.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemDeetsListFirestoreData(
  List<ItemDeetsStruct>? itemDeetss,
) =>
    itemDeetss?.map((e) => getItemDeetsFirestoreData(e, true)).toList() ?? [];
