import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PromosRecord extends FirestoreRecord {
  PromosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _business = snapshotData['business'] as DocumentReference?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _code = snapshotData['code'] as String?;
    _description = snapshotData['description'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Promos');

  static Stream<PromosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromosRecord.fromSnapshot(s));

  static Future<PromosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromosRecord.fromSnapshot(s));

  static PromosRecord fromSnapshot(DocumentSnapshot snapshot) => PromosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromosRecordData({
  DocumentReference? business,
  DocumentReference? owner,
  String? image,
  String? code,
  String? description,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'business': business,
      'owner': owner,
      'image': image,
      'code': code,
      'description': description,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromosRecordDocumentEquality implements Equality<PromosRecord> {
  const PromosRecordDocumentEquality();

  @override
  bool equals(PromosRecord? e1, PromosRecord? e2) {
    return e1?.business == e2?.business &&
        e1?.owner == e2?.owner &&
        e1?.image == e2?.image &&
        e1?.code == e2?.code &&
        e1?.description == e2?.description &&
        e1?.name == e2?.name;
  }

  @override
  int hash(PromosRecord? e) => const ListEquality().hash(
      [e?.business, e?.owner, e?.image, e?.code, e?.description, e?.name]);

  @override
  bool isValidKey(Object? o) => o is PromosRecord;
}
