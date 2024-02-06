import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class VendorSubmissionsRecord extends FirestoreRecord {
  VendorSubmissionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "vendor_phone" field.
  String? _vendorPhone;
  String get vendorPhone => _vendorPhone ?? '';
  bool hasVendorPhone() => _vendorPhone != null;

  // "vendor_email" field.
  String? _vendorEmail;
  String get vendorEmail => _vendorEmail ?? '';
  bool hasVendorEmail() => _vendorEmail != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "recommneded_user" field.
  DocumentReference? _recommnededUser;
  DocumentReference? get recommnededUser => _recommnededUser;
  bool hasRecommnededUser() => _recommnededUser != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "businessProfile" field.
  DocumentReference? _businessProfile;
  DocumentReference? get businessProfile => _businessProfile;
  bool hasBusinessProfile() => _businessProfile != null;

  // "pos_system" field.
  bool? _posSystem;
  bool get posSystem => _posSystem ?? false;
  bool hasPosSystem() => _posSystem != null;

  // "post_system_name" field.
  String? _postSystemName;
  String get postSystemName => _postSystemName ?? '';
  bool hasPostSystemName() => _postSystemName != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  bool hasTwitter() => _twitter != null;

  // "tiktok" field.
  String? _tiktok;
  String get tiktok => _tiktok ?? '';
  bool hasTiktok() => _tiktok != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  bool hasLinkedin() => _linkedin != null;

  // "license_type" field.
  String? _licenseType;
  String get licenseType => _licenseType ?? '';
  bool hasLicenseType() => _licenseType != null;

  // "license_expiration" field.
  DateTime? _licenseExpiration;
  DateTime? get licenseExpiration => _licenseExpiration;
  bool hasLicenseExpiration() => _licenseExpiration != null;

  // "license_number" field.
  String? _licenseNumber;
  String get licenseNumber => _licenseNumber ?? '';
  bool hasLicenseNumber() => _licenseNumber != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "social" field.
  bool? _social;
  bool get social => _social ?? false;
  bool hasSocial() => _social != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "brand" field.
  bool? _brand;
  bool get brand => _brand ?? false;
  bool hasBrand() => _brand != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "productTypes" field.
  List<String>? _productTypes;
  List<String> get productTypes => _productTypes ?? const [];
  bool hasProductTypes() => _productTypes != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  void _initializeFields() {
    _vendorName = snapshotData['vendor_name'] as String?;
    _vendorPhone = snapshotData['vendor_phone'] as String?;
    _vendorEmail = snapshotData['vendor_email'] as String?;
    _address = snapshotData['address'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _category = snapshotData['category'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _recommnededUser = snapshotData['recommneded_user'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _businessProfile = snapshotData['businessProfile'] as DocumentReference?;
    _posSystem = snapshotData['pos_system'] as bool?;
    _postSystemName = snapshotData['post_system_name'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _facebook = snapshotData['facebook'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _twitter = snapshotData['twitter'] as String?;
    _tiktok = snapshotData['tiktok'] as String?;
    _linkedin = snapshotData['linkedin'] as String?;
    _licenseType = snapshotData['license_type'] as String?;
    _licenseExpiration = snapshotData['license_expiration'] as DateTime?;
    _licenseNumber = snapshotData['license_number'] as String?;
    _id = snapshotData['id'] as String?;
    _reason = snapshotData['reason'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _website = snapshotData['website'] as String?;
    _social = snapshotData['social'] as bool?;
    _approved = snapshotData['approved'] as bool?;
    _brand = snapshotData['brand'] as bool?;
    _type = snapshotData['type'] as String?;
    _productTypes = getDataList(snapshotData['productTypes']);
    _state = snapshotData['state'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendorSubmissions');

  static Stream<VendorSubmissionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendorSubmissionsRecord.fromSnapshot(s));

  static Future<VendorSubmissionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VendorSubmissionsRecord.fromSnapshot(s));

  static VendorSubmissionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VendorSubmissionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendorSubmissionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendorSubmissionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendorSubmissionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendorSubmissionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendorSubmissionsRecordData({
  String? vendorName,
  String? vendorPhone,
  String? vendorEmail,
  String? address,
  LatLng? location,
  String? category,
  DateTime? createdAt,
  DocumentReference? recommnededUser,
  String? status,
  DocumentReference? businessProfile,
  bool? posSystem,
  String? postSystemName,
  DocumentReference? owner,
  String? facebook,
  String? instagram,
  String? twitter,
  String? tiktok,
  String? linkedin,
  String? licenseType,
  DateTime? licenseExpiration,
  String? licenseNumber,
  String? id,
  String? reason,
  String? firstName,
  String? lastName,
  String? website,
  bool? social,
  bool? approved,
  bool? brand,
  String? type,
  String? state,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vendor_name': vendorName,
      'vendor_phone': vendorPhone,
      'vendor_email': vendorEmail,
      'address': address,
      'location': location,
      'category': category,
      'created_at': createdAt,
      'recommneded_user': recommnededUser,
      'status': status,
      'businessProfile': businessProfile,
      'pos_system': posSystem,
      'post_system_name': postSystemName,
      'owner': owner,
      'facebook': facebook,
      'instagram': instagram,
      'twitter': twitter,
      'tiktok': tiktok,
      'linkedin': linkedin,
      'license_type': licenseType,
      'license_expiration': licenseExpiration,
      'license_number': licenseNumber,
      'id': id,
      'reason': reason,
      'first_name': firstName,
      'last_name': lastName,
      'website': website,
      'social': social,
      'approved': approved,
      'brand': brand,
      'type': type,
      'state': state,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendorSubmissionsRecordDocumentEquality
    implements Equality<VendorSubmissionsRecord> {
  const VendorSubmissionsRecordDocumentEquality();

  @override
  bool equals(VendorSubmissionsRecord? e1, VendorSubmissionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.vendorName == e2?.vendorName &&
        e1?.vendorPhone == e2?.vendorPhone &&
        e1?.vendorEmail == e2?.vendorEmail &&
        e1?.address == e2?.address &&
        e1?.location == e2?.location &&
        e1?.category == e2?.category &&
        e1?.createdAt == e2?.createdAt &&
        e1?.recommnededUser == e2?.recommnededUser &&
        e1?.status == e2?.status &&
        e1?.businessProfile == e2?.businessProfile &&
        e1?.posSystem == e2?.posSystem &&
        e1?.postSystemName == e2?.postSystemName &&
        e1?.owner == e2?.owner &&
        e1?.facebook == e2?.facebook &&
        e1?.instagram == e2?.instagram &&
        e1?.twitter == e2?.twitter &&
        e1?.tiktok == e2?.tiktok &&
        e1?.linkedin == e2?.linkedin &&
        e1?.licenseType == e2?.licenseType &&
        e1?.licenseExpiration == e2?.licenseExpiration &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.id == e2?.id &&
        e1?.reason == e2?.reason &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.website == e2?.website &&
        e1?.social == e2?.social &&
        e1?.approved == e2?.approved &&
        e1?.brand == e2?.brand &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.productTypes, e2?.productTypes) &&
        e1?.state == e2?.state;
  }

  @override
  int hash(VendorSubmissionsRecord? e) => const ListEquality().hash([
        e?.vendorName,
        e?.vendorPhone,
        e?.vendorEmail,
        e?.address,
        e?.location,
        e?.category,
        e?.createdAt,
        e?.recommnededUser,
        e?.status,
        e?.businessProfile,
        e?.posSystem,
        e?.postSystemName,
        e?.owner,
        e?.facebook,
        e?.instagram,
        e?.twitter,
        e?.tiktok,
        e?.linkedin,
        e?.licenseType,
        e?.licenseExpiration,
        e?.licenseNumber,
        e?.id,
        e?.reason,
        e?.firstName,
        e?.lastName,
        e?.website,
        e?.social,
        e?.approved,
        e?.brand,
        e?.type,
        e?.productTypes,
        e?.state
      ]);

  @override
  bool isValidKey(Object? o) => o is VendorSubmissionsRecord;
}
