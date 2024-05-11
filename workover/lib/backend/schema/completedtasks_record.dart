import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CompletedtasksRecord extends FirestoreRecord {
  CompletedtasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "useremail" field.
  String? _useremail;
  String get useremail => _useremail ?? '';
  bool hasUseremail() => _useremail != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "acceptedtime" field.
  DateTime? _acceptedtime;
  DateTime? get acceptedtime => _acceptedtime;
  bool hasAcceptedtime() => _acceptedtime != null;

  // "completedtime" field.
  DateTime? _completedtime;
  DateTime? get completedtime => _completedtime;
  bool hasCompletedtime() => _completedtime != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _department = snapshotData['department'] as String?;
    _useremail = snapshotData['useremail'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _acceptedtime = snapshotData['acceptedtime'] as DateTime?;
    _completedtime = snapshotData['completedtime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('completedtasks');

  static Stream<CompletedtasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompletedtasksRecord.fromSnapshot(s));

  static Future<CompletedtasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompletedtasksRecord.fromSnapshot(s));

  static CompletedtasksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompletedtasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompletedtasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompletedtasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompletedtasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompletedtasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompletedtasksRecordData({
  String? description,
  String? department,
  String? useremail,
  DateTime? dueDate,
  DateTime? acceptedtime,
  DateTime? completedtime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'department': department,
      'useremail': useremail,
      'due_date': dueDate,
      'acceptedtime': acceptedtime,
      'completedtime': completedtime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompletedtasksRecordDocumentEquality
    implements Equality<CompletedtasksRecord> {
  const CompletedtasksRecordDocumentEquality();

  @override
  bool equals(CompletedtasksRecord? e1, CompletedtasksRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.department == e2?.department &&
        e1?.useremail == e2?.useremail &&
        e1?.dueDate == e2?.dueDate &&
        e1?.acceptedtime == e2?.acceptedtime &&
        e1?.completedtime == e2?.completedtime;
  }

  @override
  int hash(CompletedtasksRecord? e) => const ListEquality().hash([
        e?.description,
        e?.department,
        e?.useremail,
        e?.dueDate,
        e?.acceptedtime,
        e?.completedtime
      ]);

  @override
  bool isValidKey(Object? o) => o is CompletedtasksRecord;
}
