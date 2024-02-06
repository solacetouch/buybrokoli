import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendorRatingsRecord extends FirestoreRecord {
  VendorRatingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _business = snapshotData['business'] as DocumentReference?;
    _profilePic = snapshotData['profile_pic'] as String?;
    _source = snapshotData['source'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendorRatings');

  static Stream<VendorRatingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendorRatingsRecord.fromSnapshot(s));

  static Future<VendorRatingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendorRatingsRecord.fromSnapshot(s));

  static VendorRatingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VendorRatingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendorRatingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendorRatingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendorRatingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendorRatingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendorRatingsRecordData({
  DocumentReference? user,
  double? rating,
  String? comment,
  DateTime? createdAt,
  DocumentReference? business,
  String? profilePic,
  String? source,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'rating': rating,
      'comment': comment,
      'created_at': createdAt,
      'business': business,
      'profile_pic': profilePic,
      'source': source,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendorRatingsRecordDocumentEquality
    implements Equality<VendorRatingsRecord> {
  const VendorRatingsRecordDocumentEquality();

  @override
  bool equals(VendorRatingsRecord? e1, VendorRatingsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.createdAt == e2?.createdAt &&
        e1?.business == e2?.business &&
        e1?.profilePic == e2?.profilePic &&
        e1?.source == e2?.source;
  }

  @override
  int hash(VendorRatingsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.rating,
        e?.comment,
        e?.createdAt,
        e?.business,
        e?.profilePic,
        e?.source
      ]);

  @override
  bool isValidKey(Object? o) => o is VendorRatingsRecord;
}
