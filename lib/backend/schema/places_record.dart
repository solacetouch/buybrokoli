import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PlacesRecord extends FirestoreRecord {
  PlacesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "placePosition" field.
  LatLng? _placePosition;
  LatLng? get placePosition => _placePosition;
  bool hasPlacePosition() => _placePosition != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "vendorSubmissionId" field.
  String? _vendorSubmissionId;
  String get vendorSubmissionId => _vendorSubmissionId ?? '';
  bool hasVendorSubmissionId() => _vendorSubmissionId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "hours" field.
  DocumentReference? _hours;
  DocumentReference? get hours => _hours;
  bool hasHours() => _hours != null;

  // "store_hours" field.
  bool? _storeHours;
  bool get storeHours => _storeHours ?? false;
  bool hasStoreHours() => _storeHours != null;

  void _initializeFields() {
    _locationName = snapshotData['location_name'] as String?;
    _address = snapshotData['address'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _vendorName = snapshotData['vendor_name'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _business = snapshotData['business'] as DocumentReference?;
    _placePosition = snapshotData['placePosition'] as LatLng?;
    _category = getDataList(snapshotData['category']);
    _approved = snapshotData['approved'] as bool?;
    _vendorSubmissionId = snapshotData['vendorSubmissionId'] as String?;
    _type = snapshotData['type'] as String?;
    _state = snapshotData['state'] as String?;
    _hours = snapshotData['hours'] as DocumentReference?;
    _storeHours = snapshotData['store_hours'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlacesRecord.fromSnapshot(s));

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlacesRecord.fromSnapshot(s));

  static PlacesRecord fromSnapshot(DocumentSnapshot snapshot) => PlacesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlacesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlacesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlacesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlacesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlacesRecordData({
  String? locationName,
  String? address,
  DateTime? createdAt,
  String? vendorName,
  DocumentReference? owner,
  DocumentReference? business,
  LatLng? placePosition,
  bool? approved,
  String? vendorSubmissionId,
  String? type,
  String? state,
  DocumentReference? hours,
  bool? storeHours,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location_name': locationName,
      'address': address,
      'created_at': createdAt,
      'vendor_name': vendorName,
      'owner': owner,
      'business': business,
      'placePosition': placePosition,
      'approved': approved,
      'vendorSubmissionId': vendorSubmissionId,
      'type': type,
      'state': state,
      'hours': hours,
      'store_hours': storeHours,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlacesRecordDocumentEquality implements Equality<PlacesRecord> {
  const PlacesRecordDocumentEquality();

  @override
  bool equals(PlacesRecord? e1, PlacesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.locationName == e2?.locationName &&
        e1?.address == e2?.address &&
        e1?.createdAt == e2?.createdAt &&
        e1?.vendorName == e2?.vendorName &&
        e1?.owner == e2?.owner &&
        e1?.business == e2?.business &&
        e1?.placePosition == e2?.placePosition &&
        listEquality.equals(e1?.category, e2?.category) &&
        e1?.approved == e2?.approved &&
        e1?.vendorSubmissionId == e2?.vendorSubmissionId &&
        e1?.type == e2?.type &&
        e1?.state == e2?.state &&
        e1?.hours == e2?.hours &&
        e1?.storeHours == e2?.storeHours;
  }

  @override
  int hash(PlacesRecord? e) => const ListEquality().hash([
        e?.locationName,
        e?.address,
        e?.createdAt,
        e?.vendorName,
        e?.owner,
        e?.business,
        e?.placePosition,
        e?.category,
        e?.approved,
        e?.vendorSubmissionId,
        e?.type,
        e?.state,
        e?.hours,
        e?.storeHours
      ]);

  @override
  bool isValidKey(Object? o) => o is PlacesRecord;
}
