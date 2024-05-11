import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CreatetaskRecord extends FirestoreRecord {
  CreatetaskRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "heading" field.
  String? _heading;
  String get heading => _heading ?? '';
  bool hasHeading() => _heading != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

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
    _description = snapshotData['description'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _department = snapshotData['department'] as String?;
    _assigndate = snapshotData['assigndate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('createtask');

  static Stream<CreatetaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CreatetaskRecord.fromSnapshot(s));

  static Future<CreatetaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CreatetaskRecord.fromSnapshot(s));

  static CreatetaskRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CreatetaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CreatetaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CreatetaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CreatetaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CreatetaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCreatetaskRecordData({
  String? heading,
  String? description,
  DateTime? dueDate,
  String? department,
  DateTime? assigndate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heading': heading,
      'description': description,
      'due_date': dueDate,
      'department': department,
      'assigndate': assigndate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CreatetaskRecordDocumentEquality implements Equality<CreatetaskRecord> {
  const CreatetaskRecordDocumentEquality();

  @override
  bool equals(CreatetaskRecord? e1, CreatetaskRecord? e2) {
    return e1?.heading == e2?.heading &&
        e1?.description == e2?.description &&
        e1?.dueDate == e2?.dueDate &&
        e1?.department == e2?.department &&
        e1?.assigndate == e2?.assigndate;
  }

  @override
  int hash(CreatetaskRecord? e) => const ListEquality().hash(
      [e?.heading, e?.description, e?.dueDate, e?.department, e?.assigndate]);

  @override
  bool isValidKey(Object? o) => o is CreatetaskRecord;
}
