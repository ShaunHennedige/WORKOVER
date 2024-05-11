import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class HousekkepingusersRecord extends FirestoreRecord {
  HousekkepingusersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('housekkepingusers');

  static Stream<HousekkepingusersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HousekkepingusersRecord.fromSnapshot(s));

  static Future<HousekkepingusersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HousekkepingusersRecord.fromSnapshot(s));

  static HousekkepingusersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HousekkepingusersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HousekkepingusersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HousekkepingusersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HousekkepingusersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HousekkepingusersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHousekkepingusersRecordData({
  String? uid,
  String? displayName,
  String? phoneNumber,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class HousekkepingusersRecordDocumentEquality
    implements Equality<HousekkepingusersRecord> {
  const HousekkepingusersRecordDocumentEquality();

  @override
  bool equals(HousekkepingusersRecord? e1, HousekkepingusersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email;
  }

  @override
  int hash(HousekkepingusersRecord? e) => const ListEquality()
      .hash([e?.uid, e?.displayName, e?.phoneNumber, e?.email]);

  @override
  bool isValidKey(Object? o) => o is HousekkepingusersRecord;
}
