import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FrontofficeusersRecord extends FirestoreRecord {
  FrontofficeusersRecord._(
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
      FirebaseFirestore.instance.collection('frontofficeusers');

  static Stream<FrontofficeusersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FrontofficeusersRecord.fromSnapshot(s));

  static Future<FrontofficeusersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FrontofficeusersRecord.fromSnapshot(s));

  static FrontofficeusersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FrontofficeusersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FrontofficeusersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FrontofficeusersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FrontofficeusersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FrontofficeusersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFrontofficeusersRecordData({
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

class FrontofficeusersRecordDocumentEquality
    implements Equality<FrontofficeusersRecord> {
  const FrontofficeusersRecordDocumentEquality();

  @override
  bool equals(FrontofficeusersRecord? e1, FrontofficeusersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email;
  }

  @override
  int hash(FrontofficeusersRecord? e) => const ListEquality()
      .hash([e?.uid, e?.displayName, e?.phoneNumber, e?.email]);

  @override
  bool isValidKey(Object? o) => o is FrontofficeusersRecord;
}
