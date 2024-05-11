import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AlltasksRecord extends FirestoreRecord {
  AlltasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "heading" field.
  String? _heading;
  String get heading => _heading ?? '';
  bool hasHeading() => _heading != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "assigndate" field.
  DateTime? _assigndate;
  DateTime? get assigndate => _assigndate;
  bool hasAssigndate() => _assigndate != null;

  void _initializeFields() {
    _heading = snapshotData['heading'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _description = snapshotData['description'] as String?;
    _department = snapshotData['department'] as String?;
    _assigndate = snapshotData['assigndate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alltasks');

  static Stream<AlltasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlltasksRecord.fromSnapshot(s));

  static Future<AlltasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlltasksRecord.fromSnapshot(s));

  static AlltasksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlltasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlltasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlltasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlltasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlltasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlltasksRecordData({
  String? heading,
  DateTime? dueDate,
  String? displayName,
  String? description,
  String? department,
  DateTime? assigndate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heading': heading,
      'due_date': dueDate,
      'display_name': displayName,
      'description': description,
      'department': department,
      'assigndate': assigndate,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlltasksRecordDocumentEquality implements Equality<AlltasksRecord> {
  const AlltasksRecordDocumentEquality();

  @override
  bool equals(AlltasksRecord? e1, AlltasksRecord? e2) {
    return e1?.heading == e2?.heading &&
        e1?.dueDate == e2?.dueDate &&
        e1?.displayName == e2?.displayName &&
        e1?.description == e2?.description &&
        e1?.department == e2?.department &&
        e1?.assigndate == e2?.assigndate;
  }

  @override
  int hash(AlltasksRecord? e) => const ListEquality().hash([
        e?.heading,
        e?.dueDate,
        e?.displayName,
        e?.description,
        e?.department,
        e?.assigndate
      ]);

  @override
  bool isValidKey(Object? o) => o is AlltasksRecord;
}
