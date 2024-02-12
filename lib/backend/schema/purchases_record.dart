import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PurchasesRecord extends FirestoreRecord {
  PurchasesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Purchases');

  static Stream<PurchasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PurchasesRecord.fromSnapshot(s));

  static Future<PurchasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PurchasesRecord.fromSnapshot(s));

  static PurchasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PurchasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PurchasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PurchasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PurchasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PurchasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPurchasesRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PurchasesRecordDocumentEquality implements Equality<PurchasesRecord> {
  const PurchasesRecordDocumentEquality();

  @override
  bool equals(PurchasesRecord? e1, PurchasesRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(PurchasesRecord? e) =>
      const ListEquality().hash([e?.email, e?.uid, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is PurchasesRecord;
}
