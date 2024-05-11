import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class HandoverRecord extends FirestoreRecord {
  HandoverRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _projectName = snapshotData['project_name'] as String?;
    _description = snapshotData['description'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _department = snapshotData['department'] as String?;
    _owner = snapshotData['owner'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('handover');

  static Stream<HandoverRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HandoverRecord.fromSnapshot(s));

  static Future<HandoverRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HandoverRecord.fromSnapshot(s));

  static HandoverRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HandoverRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HandoverRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HandoverRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HandoverRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HandoverRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHandoverRecordData({
  String? projectName,
  String? description,
  DateTime? timeCreated,
  String? department,
  String? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'project_name': projectName,
      'description': description,
      'time_created': timeCreated,
      'department': department,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class HandoverRecordDocumentEquality implements Equality<HandoverRecord> {
  const HandoverRecordDocumentEquality();

  @override
  bool equals(HandoverRecord? e1, HandoverRecord? e2) {
    return e1?.projectName == e2?.projectName &&
        e1?.description == e2?.description &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.department == e2?.department &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(HandoverRecord? e) => const ListEquality().hash([
        e?.projectName,
        e?.description,
        e?.timeCreated,
        e?.department,
        e?.owner
      ]);

  @override
  bool isValidKey(Object? o) => o is HandoverRecord;
}
