import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "last_login" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  bool hasLastLogin() => _lastLogin != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "chats" field.
  List<DocumentReference>? _chats;
  List<DocumentReference> get chats => _chats ?? const [];
  bool hasChats() => _chats != null;

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "reviews" field.
  DocumentReference? _reviews;
  DocumentReference? get reviews => _reviews;
  bool hasReviews() => _reviews != null;

  // "favorite_products" field.
  DocumentReference? _favoriteProducts;
  DocumentReference? get favoriteProducts => _favoriteProducts;
  bool hasFavoriteProducts() => _favoriteProducts != null;

  // "vendorSubmission" field.
  DocumentReference? _vendorSubmission;
  DocumentReference? get vendorSubmission => _vendorSubmission;
  bool hasVendorSubmission() => _vendorSubmission != null;

  // "number_of_recommendations" field.
  int? _numberOfRecommendations;
  int get numberOfRecommendations => _numberOfRecommendations ?? 0;
  bool hasNumberOfRecommendations() => _numberOfRecommendations != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "subscription_plan" field.
  String? _subscriptionPlan;
  String get subscriptionPlan => _subscriptionPlan ?? '';
  bool hasSubscriptionPlan() => _subscriptionPlan != null;

  // "visible" field.
  bool? _visible;
  bool get visible => _visible ?? false;
  bool hasVisible() => _visible != null;

  // "crm_contact_id" field.
  String? _crmContactId;
  String get crmContactId => _crmContactId ?? '';
  bool hasCrmContactId() => _crmContactId != null;

  // "crm_member_id" field.
  String? _crmMemberId;
  String get crmMemberId => _crmMemberId ?? '';
  bool hasCrmMemberId() => _crmMemberId != null;

  // "eventbrite_token" field.
  String? _eventbriteToken;
  String get eventbriteToken => _eventbriteToken ?? '';
  bool hasEventbriteToken() => _eventbriteToken != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastLogin = snapshotData['last_login'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _type = snapshotData['type'] as String?;
    _chats = getDataList(snapshotData['chats']);
    _business = snapshotData['business'] as DocumentReference?;
    _reviews = snapshotData['reviews'] as DocumentReference?;
    _favoriteProducts = snapshotData['favorite_products'] as DocumentReference?;
    _vendorSubmission = snapshotData['vendorSubmission'] as DocumentReference?;
    _numberOfRecommendations =
        castToType<int>(snapshotData['number_of_recommendations']);
    _admin = snapshotData['admin'] as bool?;
    _subscriptionPlan = snapshotData['subscription_plan'] as String?;
    _visible = snapshotData['visible'] as bool?;
    _crmContactId = snapshotData['crm_contact_id'] as String?;
    _crmMemberId = snapshotData['crm_member_id'] as String?;
    _eventbriteToken = snapshotData['eventbrite_token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastLogin,
  LatLng? location,
  String? firstName,
  String? lastName,
  String? type,
  DocumentReference? business,
  DocumentReference? reviews,
  DocumentReference? favoriteProducts,
  DocumentReference? vendorSubmission,
  int? numberOfRecommendations,
  bool? admin,
  String? subscriptionPlan,
  bool? visible,
  String? crmContactId,
  String? crmMemberId,
  String? eventbriteToken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'last_login': lastLogin,
      'location': location,
      'first_name': firstName,
      'last_name': lastName,
      'type': type,
      'business': business,
      'reviews': reviews,
      'favorite_products': favoriteProducts,
      'vendorSubmission': vendorSubmission,
      'number_of_recommendations': numberOfRecommendations,
      'admin': admin,
      'subscription_plan': subscriptionPlan,
      'visible': visible,
      'crm_contact_id': crmContactId,
      'crm_member_id': crmMemberId,
      'eventbrite_token': eventbriteToken,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastLogin == e2?.lastLogin &&
        e1?.location == e2?.location &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.chats, e2?.chats) &&
        e1?.business == e2?.business &&
        e1?.reviews == e2?.reviews &&
        e1?.favoriteProducts == e2?.favoriteProducts &&
        e1?.vendorSubmission == e2?.vendorSubmission &&
        e1?.numberOfRecommendations == e2?.numberOfRecommendations &&
        e1?.admin == e2?.admin &&
        e1?.subscriptionPlan == e2?.subscriptionPlan &&
        e1?.visible == e2?.visible &&
        e1?.crmContactId == e2?.crmContactId &&
        e1?.crmMemberId == e2?.crmMemberId &&
        e1?.eventbriteToken == e2?.eventbriteToken;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastLogin,
        e?.location,
        e?.firstName,
        e?.lastName,
        e?.type,
        e?.chats,
        e?.business,
        e?.reviews,
        e?.favoriteProducts,
        e?.vendorSubmission,
        e?.numberOfRecommendations,
        e?.admin,
        e?.subscriptionPlan,
        e?.visible,
        e?.crmContactId,
        e?.crmMemberId,
        e?.eventbriteToken
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
