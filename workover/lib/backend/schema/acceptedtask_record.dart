import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AcceptedtaskRecord extends FirestoreRecord {
  AcceptedtaskRecord._(
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

  // "useremail" field.
  String? _useremail;
  String get useremail => _useremail ?? '';
  bool hasUseremail() => _useremail != null;

  // "acceptedtime" field.
  DateTime? _acceptedtime;
  DateTime? get acceptedtime => _acceptedtime;
  bool hasAcceptedtime() => _acceptedtime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _heading = snapshotData['heading'] as String?;
    _description = snapshotData['description'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _department = snapshotData['department'] as String?;
    _useremail = snapshotData['useremail'] as String?;
    _acceptedtime = snapshotData['acceptedtime'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('acceptedtask');

  static Stream<AcceptedtaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcceptedtaskRecord.fromSnapshot(s));

  static Future<AcceptedtaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcceptedtaskRecord.fromSnapshot(s));

  static AcceptedtaskRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AcceptedtaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcceptedtaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcceptedtaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcceptedtaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AcceptedtaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcceptedtaskRecordData({
  String? heading,
  String? description,
  DateTime? dueDate,
  String? department,
  String? useremail,
  DateTime? acceptedtime,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heading': heading,
      'description': description,
      'due_date': dueDate,
      'department': department,
      'useremail': useremail,
      'acceptedtime': acceptedtime,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class AcceptedtaskRecordDocumentEquality
    implements Equality<AcceptedtaskRecord> {
  const AcceptedtaskRecordDocumentEquality();

  @override
  bool equals(AcceptedtaskRecord? e1, AcceptedtaskRecord? e2) {
    return e1?.heading == e2?.heading &&
        e1?.description == e2?.description &&
        e1?.dueDate == e2?.dueDate &&
        e1?.department == e2?.department &&
        e1?.useremail == e2?.useremail &&
        e1?.acceptedtime == e2?.acceptedtime &&
        e1?.status == e2?.status;
  }

  @override
  int hash(AcceptedtaskRecord? e) => const ListEquality().hash([
        e?.heading,
        e?.description,
        e?.dueDate,
        e?.department,
        e?.useremail,
        e?.acceptedtime,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is AcceptedtaskRecord;
}
