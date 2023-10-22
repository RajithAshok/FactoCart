import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "catref" field.
  DocumentReference? _catref;
  DocumentReference? get catref => _catref;
  bool hasCatref() => _catref != null;

  // "vendorName" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "refcat" field.
  String? _refcat;
  String get refcat => _refcat ?? '';
  bool hasRefcat() => _refcat != null;

  // "offer" field.
  bool? _offer;
  bool get offer => _offer ?? false;
  bool hasOffer() => _offer != null;

  // "discPrice" field.
  double? _discPrice;
  double get discPrice => _discPrice ?? 0.0;
  bool hasDiscPrice() => _discPrice != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _desc = snapshotData['desc'] as String?;
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _stock = castToType<int>(snapshotData['stock']);
    _catref = snapshotData['catref'] as DocumentReference?;
    _vendorName = snapshotData['vendorName'] as String?;
    _refcat = snapshotData['refcat'] as String?;
    _offer = snapshotData['offer'] as bool?;
    _discPrice = castToType<double>(snapshotData['discPrice']);
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? desc,
  String? image,
  String? name,
  int? stock,
  DocumentReference? catref,
  String? vendorName,
  String? refcat,
  bool? offer,
  double? discPrice,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'desc': desc,
      'image': image,
      'name': name,
      'stock': stock,
      'catref': catref,
      'vendorName': vendorName,
      'refcat': refcat,
      'offer': offer,
      'discPrice': discPrice,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    return e1?.desc == e2?.desc &&
        e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.stock == e2?.stock &&
        e1?.catref == e2?.catref &&
        e1?.vendorName == e2?.vendorName &&
        e1?.refcat == e2?.refcat &&
        e1?.offer == e2?.offer &&
        e1?.discPrice == e2?.discPrice &&
        e1?.price == e2?.price;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.desc,
        e?.image,
        e?.name,
        e?.stock,
        e?.catref,
        e?.vendorName,
        e?.refcat,
        e?.offer,
        e?.discPrice,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
