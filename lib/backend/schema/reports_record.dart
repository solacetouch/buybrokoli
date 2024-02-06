import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "reporter" field.
  DocumentReference? _reporter;
  DocumentReference? get reporter => _reporter;
  bool hasReporter() => _reporter != null;

  // "report_reason" field.
  String? _reportReason;
  String get reportReason => _reportReason ?? '';
  bool hasReportReason() => _reportReason != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "decision" field.
  String? _decision;
  String get decision => _decision ?? '';
  bool hasDecision() => _decision != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _business = snapshotData['business'] as DocumentReference?;
    _reporter = snapshotData['reporter'] as DocumentReference?;
    _reportReason = snapshotData['report_reason'] as String?;
    _details = snapshotData['details'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _decision = snapshotData['decision'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  DocumentReference? business,
  DocumentReference? reporter,
  String? reportReason,
  String? details,
  DateTime? created,
  String? status,
  String? decision,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'business': business,
      'reporter': reporter,
      'report_reason': reportReason,
      'details': details,
      'created': created,
      'status': status,
      'decision': decision,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.business == e2?.business &&
        e1?.reporter == e2?.reporter &&
        e1?.reportReason == e2?.reportReason &&
        e1?.details == e2?.details &&
        e1?.created == e2?.created &&
        e1?.status == e2?.status &&
        e1?.decision == e2?.decision &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash([
        e?.business,
        e?.reporter,
        e?.reportReason,
        e?.details,
        e?.created,
        e?.status,
        e?.decision,
        e?.owner
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
