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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "itemsordered" field.
  List<DocumentReference>? _itemsordered;
  List<DocumentReference> get itemsordered => _itemsordered ?? const [];
  bool hasItemsordered() => _itemsordered != null;

  // "fee" field.
  double? _fee;
  double get fee => _fee ?? 0.0;
  bool hasFee() => _fee != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "item" field.
  List<ItemDeetsStruct>? _item;
  List<ItemDeetsStruct> get item => _item ?? const [];
  bool hasItem() => _item != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _vendorName = snapshotData['vendor_name'] as String?;
    _itemsordered = getDataList(snapshotData['itemsordered']);
    _fee = castToType<double>(snapshotData['fee']);
    _user = snapshotData['user'] as DocumentReference?;
    _address = snapshotData['address'] as String?;
    _item = getStructList(
      snapshotData['item'],
      ItemDeetsStruct.fromMap,
    );
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
  String? name,
  double? amount,
  String? status,
  DateTime? createdAt,
  String? vendorName,
  double? fee,
  DocumentReference? user,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'status': status,
      'created_at': createdAt,
      'vendor_name': vendorName,
      'fee': fee,
      'user': user,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.vendorName == e2?.vendorName &&
        listEquality.equals(e1?.itemsordered, e2?.itemsordered) &&
        e1?.fee == e2?.fee &&
        e1?.user == e2?.user &&
        e1?.address == e2?.address &&
        listEquality.equals(e1?.item, e2?.item);
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.status,
        e?.createdAt,
        e?.vendorName,
        e?.itemsordered,
        e?.fee,
        e?.user,
        e?.address,
        e?.item
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
