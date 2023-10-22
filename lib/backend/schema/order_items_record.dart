import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemsRecord extends FirestoreRecord {
  OrderItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderref" field.
  DocumentReference? _orderref;
  DocumentReference? get orderref => _orderref;
  bool hasOrderref() => _orderref != null;

  // "proref" field.
  DocumentReference? _proref;
  DocumentReference? get proref => _proref;
  bool hasProref() => _proref != null;

  // "pro_name" field.
  String? _proName;
  String get proName => _proName ?? '';
  bool hasProName() => _proName != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "pro_image" field.
  String? _proImage;
  String get proImage => _proImage ?? '';
  bool hasProImage() => _proImage != null;

  void _initializeFields() {
    _orderref = snapshotData['orderref'] as DocumentReference?;
    _proref = snapshotData['proref'] as DocumentReference?;
    _proName = snapshotData['pro_name'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _amount = castToType<double>(snapshotData['amount']);
    _proImage = snapshotData['pro_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderItems');

  static Stream<OrderItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderItemsRecord.fromSnapshot(s));

  static Future<OrderItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderItemsRecord.fromSnapshot(s));

  static OrderItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderItemsRecordData({
  DocumentReference? orderref,
  DocumentReference? proref,
  String? proName,
  int? quantity,
  double? amount,
  String? proImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderref': orderref,
      'proref': proref,
      'pro_name': proName,
      'quantity': quantity,
      'amount': amount,
      'pro_image': proImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderItemsRecordDocumentEquality implements Equality<OrderItemsRecord> {
  const OrderItemsRecordDocumentEquality();

  @override
  bool equals(OrderItemsRecord? e1, OrderItemsRecord? e2) {
    return e1?.orderref == e2?.orderref &&
        e1?.proref == e2?.proref &&
        e1?.proName == e2?.proName &&
        e1?.quantity == e2?.quantity &&
        e1?.amount == e2?.amount &&
        e1?.proImage == e2?.proImage;
  }

  @override
  int hash(OrderItemsRecord? e) => const ListEquality().hash([
        e?.orderref,
        e?.proref,
        e?.proName,
        e?.quantity,
        e?.amount,
        e?.proImage
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderItemsRecord;
}
