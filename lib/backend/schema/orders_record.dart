import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "proref" field.
  DocumentReference? _proref;
  DocumentReference? get proref => _proref;
  bool hasProref() => _proref != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "vendorsname" field.
  String? _vendorsname;
  String get vendorsname => _vendorsname ?? '';
  bool hasVendorsname() => _vendorsname != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userAddress" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _proref = snapshotData['proref'] as DocumentReference?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _totalPrice = castToType<double>(snapshotData['totalPrice']);
    _vendorsname = snapshotData['vendorsname'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userAddress = snapshotData['userAddress'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? proref,
  DocumentReference? userref,
  int? quantity,
  double? totalPrice,
  String? vendorsname,
  DateTime? createdAt,
  String? userAddress,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'proref': proref,
      'userref': userref,
      'quantity': quantity,
      'totalPrice': totalPrice,
      'vendorsname': vendorsname,
      'created_at': createdAt,
      'userAddress': userAddress,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.proref == e2?.proref &&
        e1?.userref == e2?.userref &&
        e1?.quantity == e2?.quantity &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.vendorsname == e2?.vendorsname &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userAddress == e2?.userAddress &&
        e1?.status == e2?.status;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.proref,
        e?.userref,
        e?.quantity,
        e?.totalPrice,
        e?.vendorsname,
        e?.createdAt,
        e?.userAddress,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
