// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdStruct extends FFFirebaseStruct {
  ProdStruct({
    String? desc,
    int? stock,
    int? price,
    String? image,
    String? name,
    DocumentReference? catref,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _desc = desc,
        _stock = stock,
        _price = price,
        _image = image,
        _name = name,
        _catref = catref,
        super(firestoreUtilData);

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  set stock(int? val) => _stock = val;
  void incrementStock(int amount) => _stock = stock + amount;
  bool hasStock() => _stock != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "catref" field.
  DocumentReference? _catref;
  DocumentReference? get catref => _catref;
  set catref(DocumentReference? val) => _catref = val;
  bool hasCatref() => _catref != null;

  static ProdStruct fromMap(Map<String, dynamic> data) => ProdStruct(
        desc: data['desc'] as String?,
        stock: castToType<int>(data['stock']),
        price: castToType<int>(data['price']),
        image: data['image'] as String?,
        name: data['name'] as String?,
        catref: data['catref'] as DocumentReference?,
      );

  static ProdStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProdStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'desc': _desc,
        'stock': _stock,
        'price': _price,
        'image': _image,
        'name': _name,
        'catref': _catref,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'stock': serializeParam(
          _stock,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'catref': serializeParam(
          _catref,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ProdStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdStruct(
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        stock: deserializeParam(
          data['stock'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        catref: deserializeParam(
          data['catref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['categories'],
        ),
      );

  @override
  String toString() => 'ProdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdStruct &&
        desc == other.desc &&
        stock == other.stock &&
        price == other.price &&
        image == other.image &&
        name == other.name &&
        catref == other.catref;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([desc, stock, price, image, name, catref]);
}

ProdStruct createProdStruct({
  String? desc,
  int? stock,
  int? price,
  String? image,
  String? name,
  DocumentReference? catref,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdStruct(
      desc: desc,
      stock: stock,
      price: price,
      image: image,
      name: name,
      catref: catref,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdStruct? updateProdStruct(
  ProdStruct? prod, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    prod
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdStructData(
  Map<String, dynamic> firestoreData,
  ProdStruct? prod,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (prod == null) {
    return;
  }
  if (prod.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && prod.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final prodData = getProdFirestoreData(prod, forFieldValue);
  final nestedData = prodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = prod.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdFirestoreData(
  ProdStruct? prod, [
  bool forFieldValue = false,
]) {
  if (prod == null) {
    return {};
  }
  final firestoreData = mapToFirestore(prod.toMap());

  // Add any Firestore field values
  prod.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdListFirestoreData(
  List<ProdStruct>? prods,
) =>
    prods?.map((e) => getProdFirestoreData(e, true)).toList() ?? [];
