import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shipadd" field.
  String? _shipadd;
  String get shipadd => _shipadd ?? '';
  bool hasShipadd() => _shipadd != null;

  // "userType" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "shopAddr" field.
  String? _shopAddr;
  String get shopAddr => _shopAddr ?? '';
  bool hasShopAddr() => _shopAddr != null;

  // "gstIn" field.
  String? _gstIn;
  String get gstIn => _gstIn ?? '';
  bool hasGstIn() => _gstIn != null;

  // "panCard" field.
  String? _panCard;
  String get panCard => _panCard ?? '';
  bool hasPanCard() => _panCard != null;

  // "bankAcc" field.
  int? _bankAcc;
  int get bankAcc => _bankAcc ?? 0;
  bool hasBankAcc() => _bankAcc != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shipadd = snapshotData['shipadd'] as String?;
    _userType = snapshotData['userType'] as String?;
    _shopAddr = snapshotData['shopAddr'] as String?;
    _gstIn = snapshotData['gstIn'] as String?;
    _panCard = snapshotData['panCard'] as String?;
    _bankAcc = castToType<int>(snapshotData['bankAcc']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shipadd,
  String? userType,
  String? shopAddr,
  String? gstIn,
  String? panCard,
  int? bankAcc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shipadd': shipadd,
      'userType': userType,
      'shopAddr': shopAddr,
      'gstIn': gstIn,
      'panCard': panCard,
      'bankAcc': bankAcc,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shipadd == e2?.shipadd &&
        e1?.userType == e2?.userType &&
        e1?.shopAddr == e2?.shopAddr &&
        e1?.gstIn == e2?.gstIn &&
        e1?.panCard == e2?.panCard &&
        e1?.bankAcc == e2?.bankAcc;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shipadd,
        e?.userType,
        e?.shopAddr,
        e?.gstIn,
        e?.panCard,
        e?.bankAcc
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
