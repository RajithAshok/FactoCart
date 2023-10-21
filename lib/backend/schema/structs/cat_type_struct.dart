// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatTypeStruct extends FFFirebaseStruct {
  CatTypeStruct({
    DocumentReference? catref,
    String? catName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _catref = catref,
        _catName = catName,
        super(firestoreUtilData);

  // "catref" field.
  DocumentReference? _catref;
  DocumentReference? get catref => _catref;
  set catref(DocumentReference? val) => _catref = val;
  bool hasCatref() => _catref != null;

  // "catName" field.
  String? _catName;
  String get catName => _catName ?? '';
  set catName(String? val) => _catName = val;
  bool hasCatName() => _catName != null;

  static CatTypeStruct fromMap(Map<String, dynamic> data) => CatTypeStruct(
        catref: data['catref'] as DocumentReference?,
        catName: data['catName'] as String?,
      );

  static CatTypeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CatTypeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'catref': _catref,
        'catName': _catName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'catref': serializeParam(
          _catref,
          ParamType.DocumentReference,
        ),
        'catName': serializeParam(
          _catName,
          ParamType.String,
        ),
      }.withoutNulls;

  static CatTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CatTypeStruct(
        catref: deserializeParam(
          data['catref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['categories'],
        ),
        catName: deserializeParam(
          data['catName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CatTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CatTypeStruct &&
        catref == other.catref &&
        catName == other.catName;
  }

  @override
  int get hashCode => const ListEquality().hash([catref, catName]);
}

CatTypeStruct createCatTypeStruct({
  DocumentReference? catref,
  String? catName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CatTypeStruct(
      catref: catref,
      catName: catName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CatTypeStruct? updateCatTypeStruct(
  CatTypeStruct? catType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    catType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCatTypeStructData(
  Map<String, dynamic> firestoreData,
  CatTypeStruct? catType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (catType == null) {
    return;
  }
  if (catType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && catType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final catTypeData = getCatTypeFirestoreData(catType, forFieldValue);
  final nestedData = catTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = catType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCatTypeFirestoreData(
  CatTypeStruct? catType, [
  bool forFieldValue = false,
]) {
  if (catType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(catType.toMap());

  // Add any Firestore field values
  catType.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCatTypeListFirestoreData(
  List<CatTypeStruct>? catTypes,
) =>
    catTypes?.map((e) => getCatTypeFirestoreData(e, true)).toList() ?? [];
