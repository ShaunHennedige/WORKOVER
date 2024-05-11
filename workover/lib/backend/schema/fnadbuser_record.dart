import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FnadbuserRecord extends FirestoreRecord {
  FnadbuserRecord._(
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
      FirebaseFirestore.instance.collection('fnadbuser');

  static Stream<FnadbuserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FnadbuserRecord.fromSnapshot(s));

  static Future<FnadbuserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FnadbuserRecord.fromSnapshot(s));

  static FnadbuserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FnadbuserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FnadbuserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FnadbuserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FnadbuserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FnadbuserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFnadbuserRecordData({
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

class FnadbuserRecordDocumentEquality implements Equality<FnadbuserRecord> {
  const FnadbuserRecordDocumentEquality();

  @override
  bool equals(FnadbuserRecord? e1, FnadbuserRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email;
  }

  @override
  int hash(FnadbuserRecord? e) => const ListEquality()
      .hash([e?.uid, e?.displayName, e?.phoneNumber, e?.email]);

  @override
  bool isValidKey(Object? o) => o is FnadbuserRecord;
}
