import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessesRecord extends FirestoreRecord {
  BusinessesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "vendor_logo" field.
  String? _vendorLogo;
  String get vendorLogo => _vendorLogo ?? '';
  bool hasVendorLogo() => _vendorLogo != null;

  // "ratings" field.
  DocumentReference? _ratings;
  DocumentReference? get ratings => _ratings;
  bool hasRatings() => _ratings != null;

  // "total_ratings" field.
  int? _totalRatings;
  int get totalRatings => _totalRatings ?? 0;
  bool hasTotalRatings() => _totalRatings != null;

  // "ratings_sum" field.
  double? _ratingsSum;
  double get ratingsSum => _ratingsSum ?? 0.0;
  bool hasRatingsSum() => _ratingsSum != null;

  // "average_rating" field.
  double? _averageRating;
  double get averageRating => _averageRating ?? 0.0;
  bool hasAverageRating() => _averageRating != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "claimed" field.
  bool? _claimed;
  bool get claimed => _claimed ?? false;
  bool hasClaimed() => _claimed != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  bool hasTwitter() => _twitter != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "tiktok" field.
  String? _tiktok;
  String get tiktok => _tiktok ?? '';
  bool hasTiktok() => _tiktok != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "license_type" field.
  String? _licenseType;
  String get licenseType => _licenseType ?? '';
  bool hasLicenseType() => _licenseType != null;

  // "license_expiration" field.
  DateTime? _licenseExpiration;
  DateTime? get licenseExpiration => _licenseExpiration;
  bool hasLicenseExpiration() => _licenseExpiration != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "affiliate_link" field.
  String? _affiliateLink;
  String get affiliateLink => _affiliateLink ?? '';
  bool hasAffiliateLink() => _affiliateLink != null;

  // "promo_code" field.
  String? _promoCode;
  String get promoCode => _promoCode ?? '';
  bool hasPromoCode() => _promoCode != null;

  // "promo_description" field.
  String? _promoDescription;
  String get promoDescription => _promoDescription ?? '';
  bool hasPromoDescription() => _promoDescription != null;

  // "featured_brand" field.
  bool? _featuredBrand;
  bool get featuredBrand => _featuredBrand ?? false;
  bool hasFeaturedBrand() => _featuredBrand != null;

  // "claimed_date" field.
  DateTime? _claimedDate;
  DateTime? get claimedDate => _claimedDate;
  bool hasClaimedDate() => _claimedDate != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "license_number" field.
  String? _licenseNumber;
  String get licenseNumber => _licenseNumber ?? '';
  bool hasLicenseNumber() => _licenseNumber != null;

  // "pos" field.
  bool? _pos;
  bool get pos => _pos ?? false;
  bool hasPos() => _pos != null;

  // "pos_system" field.
  String? _posSystem;
  String get posSystem => _posSystem ?? '';
  bool hasPosSystem() => _posSystem != null;

  // "social" field.
  bool? _social;
  bool get social => _social ?? false;
  bool hasSocial() => _social != null;

  // "b2b" field.
  bool? _b2b;
  bool get b2b => _b2b ?? false;
  bool hasB2b() => _b2b != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  bool hasLinkedin() => _linkedin != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "pageviews" field.
  int? _pageviews;
  int get pageviews => _pageviews ?? 0;
  bool hasPageviews() => _pageviews != null;

  // "website_clicks" field.
  int? _websiteClicks;
  int get websiteClicks => _websiteClicks ?? 0;
  bool hasWebsiteClicks() => _websiteClicks != null;

  // "social_media_clicks" field.
  int? _socialMediaClicks;
  int get socialMediaClicks => _socialMediaClicks ?? 0;
  bool hasSocialMediaClicks() => _socialMediaClicks != null;

  // "pageview_goal" field.
  int? _pageviewGoal;
  int get pageviewGoal => _pageviewGoal ?? 0;
  bool hasPageviewGoal() => _pageviewGoal != null;

  // "crm_member_id" field.
  String? _crmMemberId;
  String get crmMemberId => _crmMemberId ?? '';
  bool hasCrmMemberId() => _crmMemberId != null;

  // "crm_contact_id" field.
  String? _crmContactId;
  String get crmContactId => _crmContactId ?? '';
  bool hasCrmContactId() => _crmContactId != null;

  // "businessId" field.
  String? _businessId;
  String get businessId => _businessId ?? '';
  bool hasBusinessId() => _businessId != null;

  // "productTypes" field.
  List<String>? _productTypes;
  List<String> get productTypes => _productTypes ?? const [];
  bool hasProductTypes() => _productTypes != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "paid" field.
  bool? _paid;
  bool get paid => _paid ?? false;
  bool hasPaid() => _paid != null;

  // "visitors" field.
  List<DocumentReference>? _visitors;
  List<DocumentReference> get visitors => _visitors ?? const [];
  bool hasVisitors() => _visitors != null;

  // "eventbrite_organization_id" field.
  String? _eventbriteOrganizationId;
  String get eventbriteOrganizationId => _eventbriteOrganizationId ?? '';
  bool hasEventbriteOrganizationId() => _eventbriteOrganizationId != null;

  // "eventbrite_token" field.
  String? _eventbriteToken;
  String get eventbriteToken => _eventbriteToken ?? '';
  bool hasEventbriteToken() => _eventbriteToken != null;

  // "meta_ig_code" field.
  String? _metaIgCode;
  String get metaIgCode => _metaIgCode ?? '';
  bool hasMetaIgCode() => _metaIgCode != null;

  // "meta_short_access_token" field.
  String? _metaShortAccessToken;
  String get metaShortAccessToken => _metaShortAccessToken ?? '';
  bool hasMetaShortAccessToken() => _metaShortAccessToken != null;

  // "meta_ig_userID" field.
  String? _metaIgUserID;
  String get metaIgUserID => _metaIgUserID ?? '';
  bool hasMetaIgUserID() => _metaIgUserID != null;

  void _initializeFields() {
    _vendorName = snapshotData['vendor_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _profilePic = snapshotData['profile_pic'] as String?;
    _address = snapshotData['address'] as String?;
    _vendorLogo = snapshotData['vendor_logo'] as String?;
    _ratings = snapshotData['ratings'] as DocumentReference?;
    _totalRatings = castToType<int>(snapshotData['total_ratings']);
    _ratingsSum = castToType<double>(snapshotData['ratings_sum']);
    _averageRating = castToType<double>(snapshotData['average_rating']);
    _description = snapshotData['Description'] as String?;
    _photos = getDataList(snapshotData['photos']);
    _claimed = snapshotData['claimed'] as bool?;
    _website = snapshotData['website'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _twitter = snapshotData['twitter'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _tiktok = snapshotData['tiktok'] as String?;
    _uid = snapshotData['uid'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _licenseType = snapshotData['license_type'] as String?;
    _licenseExpiration = snapshotData['license_expiration'] as DateTime?;
    _approved = snapshotData['approved'] as bool?;
    _affiliateLink = snapshotData['affiliate_link'] as String?;
    _promoCode = snapshotData['promo_code'] as String?;
    _promoDescription = snapshotData['promo_description'] as String?;
    _featuredBrand = snapshotData['featured_brand'] as bool?;
    _claimedDate = snapshotData['claimed_date'] as DateTime?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _licenseNumber = snapshotData['license_number'] as String?;
    _pos = snapshotData['pos'] as bool?;
    _posSystem = snapshotData['pos_system'] as String?;
    _social = snapshotData['social'] as bool?;
    _b2b = snapshotData['b2b'] as bool?;
    _linkedin = snapshotData['linkedin'] as String?;
    _category = snapshotData['category'] as String?;
    _type = snapshotData['type'] as String?;
    _pageviews = castToType<int>(snapshotData['pageviews']);
    _websiteClicks = castToType<int>(snapshotData['website_clicks']);
    _socialMediaClicks = castToType<int>(snapshotData['social_media_clicks']);
    _pageviewGoal = castToType<int>(snapshotData['pageview_goal']);
    _crmMemberId = snapshotData['crm_member_id'] as String?;
    _crmContactId = snapshotData['crm_contact_id'] as String?;
    _businessId = snapshotData['businessId'] as String?;
    _productTypes = getDataList(snapshotData['productTypes']);
    _state = snapshotData['state'] as String?;
    _paid = snapshotData['paid'] as bool?;
    _visitors = getDataList(snapshotData['visitors']);
    _eventbriteOrganizationId =
        snapshotData['eventbrite_organization_id'] as String?;
    _eventbriteToken = snapshotData['eventbrite_token'] as String?;
    _metaIgCode = snapshotData['meta_ig_code'] as String?;
    _metaShortAccessToken = snapshotData['meta_short_access_token'] as String?;
    _metaIgUserID = snapshotData['meta_ig_userID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('businesses');

  static Stream<BusinessesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessesRecord.fromSnapshot(s));

  static Future<BusinessesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessesRecord.fromSnapshot(s));

  static BusinessesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessesRecord._(reference, mapFromFirestore(data));

  static BusinessesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      BusinessesRecord.getDocumentFromData(
        {
          'vendor_name': snapshot.data['vendor_name'],
          'created_at': convertAlgoliaParam(
            snapshot.data['created_at'],
            ParamType.DateTime,
            false,
          ),
          'profile_pic': snapshot.data['profile_pic'],
          'address': snapshot.data['address'],
          'vendor_logo': snapshot.data['vendor_logo'],
          'ratings': convertAlgoliaParam(
            snapshot.data['ratings'],
            ParamType.DocumentReference,
            false,
          ),
          'total_ratings': convertAlgoliaParam(
            snapshot.data['total_ratings'],
            ParamType.int,
            false,
          ),
          'ratings_sum': convertAlgoliaParam(
            snapshot.data['ratings_sum'],
            ParamType.double,
            false,
          ),
          'average_rating': convertAlgoliaParam(
            snapshot.data['average_rating'],
            ParamType.double,
            false,
          ),
          'Description': snapshot.data['Description'],
          'photos': safeGet(
            () => snapshot.data['photos'].toList(),
          ),
          'claimed': snapshot.data['claimed'],
          'website': snapshot.data['website'],
          'facebook': snapshot.data['facebook'],
          'twitter': snapshot.data['twitter'],
          'instagram': snapshot.data['instagram'],
          'tiktok': snapshot.data['tiktok'],
          'uid': snapshot.data['uid'],
          'owner': convertAlgoliaParam(
            snapshot.data['owner'],
            ParamType.DocumentReference,
            false,
          ),
          'license_type': snapshot.data['license_type'],
          'license_expiration': convertAlgoliaParam(
            snapshot.data['license_expiration'],
            ParamType.DateTime,
            false,
          ),
          'approved': snapshot.data['approved'],
          'affiliate_link': snapshot.data['affiliate_link'],
          'promo_code': snapshot.data['promo_code'],
          'promo_description': snapshot.data['promo_description'],
          'featured_brand': snapshot.data['featured_brand'],
          'claimed_date': convertAlgoliaParam(
            snapshot.data['claimed_date'],
            ParamType.DateTime,
            false,
          ),
          'phone': snapshot.data['phone'],
          'email': snapshot.data['email'],
          'license_number': snapshot.data['license_number'],
          'pos': snapshot.data['pos'],
          'pos_system': snapshot.data['pos_system'],
          'social': snapshot.data['social'],
          'b2b': snapshot.data['b2b'],
          'linkedin': snapshot.data['linkedin'],
          'category': snapshot.data['category'],
          'type': snapshot.data['type'],
          'pageviews': convertAlgoliaParam(
            snapshot.data['pageviews'],
            ParamType.int,
            false,
          ),
          'website_clicks': convertAlgoliaParam(
            snapshot.data['website_clicks'],
            ParamType.int,
            false,
          ),
          'social_media_clicks': convertAlgoliaParam(
            snapshot.data['social_media_clicks'],
            ParamType.int,
            false,
          ),
          'pageview_goal': convertAlgoliaParam(
            snapshot.data['pageview_goal'],
            ParamType.int,
            false,
          ),
          'crm_member_id': snapshot.data['crm_member_id'],
          'crm_contact_id': snapshot.data['crm_contact_id'],
          'businessId': snapshot.data['businessId'],
          'productTypes': safeGet(
            () => snapshot.data['productTypes'].toList(),
          ),
          'state': snapshot.data['state'],
          'paid': snapshot.data['paid'],
          'visitors': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['visitors'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'eventbrite_organization_id':
              snapshot.data['eventbrite_organization_id'],
          'eventbrite_token': snapshot.data['eventbrite_token'],
          'meta_ig_code': snapshot.data['meta_ig_code'],
          'meta_short_access_token': snapshot.data['meta_short_access_token'],
          'meta_ig_userID': snapshot.data['meta_ig_userID'],
        },
        BusinessesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<BusinessesRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'businesses',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'BusinessesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessesRecordData({
  String? vendorName,
  DateTime? createdAt,
  String? profilePic,
  String? address,
  String? vendorLogo,
  DocumentReference? ratings,
  int? totalRatings,
  double? ratingsSum,
  double? averageRating,
  String? description,
  bool? claimed,
  String? website,
  String? facebook,
  String? twitter,
  String? instagram,
  String? tiktok,
  String? uid,
  DocumentReference? owner,
  String? licenseType,
  DateTime? licenseExpiration,
  bool? approved,
  String? affiliateLink,
  String? promoCode,
  String? promoDescription,
  bool? featuredBrand,
  DateTime? claimedDate,
  String? phone,
  String? email,
  String? licenseNumber,
  bool? pos,
  String? posSystem,
  bool? social,
  bool? b2b,
  String? linkedin,
  String? category,
  String? type,
  int? pageviews,
  int? websiteClicks,
  int? socialMediaClicks,
  int? pageviewGoal,
  String? crmMemberId,
  String? crmContactId,
  String? businessId,
  String? state,
  bool? paid,
  String? eventbriteOrganizationId,
  String? eventbriteToken,
  String? metaIgCode,
  String? metaShortAccessToken,
  String? metaIgUserID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vendor_name': vendorName,
      'created_at': createdAt,
      'profile_pic': profilePic,
      'address': address,
      'vendor_logo': vendorLogo,
      'ratings': ratings,
      'total_ratings': totalRatings,
      'ratings_sum': ratingsSum,
      'average_rating': averageRating,
      'Description': description,
      'claimed': claimed,
      'website': website,
      'facebook': facebook,
      'twitter': twitter,
      'instagram': instagram,
      'tiktok': tiktok,
      'uid': uid,
      'owner': owner,
      'license_type': licenseType,
      'license_expiration': licenseExpiration,
      'approved': approved,
      'affiliate_link': affiliateLink,
      'promo_code': promoCode,
      'promo_description': promoDescription,
      'featured_brand': featuredBrand,
      'claimed_date': claimedDate,
      'phone': phone,
      'email': email,
      'license_number': licenseNumber,
      'pos': pos,
      'pos_system': posSystem,
      'social': social,
      'b2b': b2b,
      'linkedin': linkedin,
      'category': category,
      'type': type,
      'pageviews': pageviews,
      'website_clicks': websiteClicks,
      'social_media_clicks': socialMediaClicks,
      'pageview_goal': pageviewGoal,
      'crm_member_id': crmMemberId,
      'crm_contact_id': crmContactId,
      'businessId': businessId,
      'state': state,
      'paid': paid,
      'eventbrite_organization_id': eventbriteOrganizationId,
      'eventbrite_token': eventbriteToken,
      'meta_ig_code': metaIgCode,
      'meta_short_access_token': metaShortAccessToken,
      'meta_ig_userID': metaIgUserID,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessesRecordDocumentEquality implements Equality<BusinessesRecord> {
  const BusinessesRecordDocumentEquality();

  @override
  bool equals(BusinessesRecord? e1, BusinessesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.vendorName == e2?.vendorName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.profilePic == e2?.profilePic &&
        e1?.address == e2?.address &&
        e1?.vendorLogo == e2?.vendorLogo &&
        e1?.ratings == e2?.ratings &&
        e1?.totalRatings == e2?.totalRatings &&
        e1?.ratingsSum == e2?.ratingsSum &&
        e1?.averageRating == e2?.averageRating &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        e1?.claimed == e2?.claimed &&
        e1?.website == e2?.website &&
        e1?.facebook == e2?.facebook &&
        e1?.twitter == e2?.twitter &&
        e1?.instagram == e2?.instagram &&
        e1?.tiktok == e2?.tiktok &&
        e1?.uid == e2?.uid &&
        e1?.owner == e2?.owner &&
        e1?.licenseType == e2?.licenseType &&
        e1?.licenseExpiration == e2?.licenseExpiration &&
        e1?.approved == e2?.approved &&
        e1?.affiliateLink == e2?.affiliateLink &&
        e1?.promoCode == e2?.promoCode &&
        e1?.promoDescription == e2?.promoDescription &&
        e1?.featuredBrand == e2?.featuredBrand &&
        e1?.claimedDate == e2?.claimedDate &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.pos == e2?.pos &&
        e1?.posSystem == e2?.posSystem &&
        e1?.social == e2?.social &&
        e1?.b2b == e2?.b2b &&
        e1?.linkedin == e2?.linkedin &&
        e1?.category == e2?.category &&
        e1?.type == e2?.type &&
        e1?.pageviews == e2?.pageviews &&
        e1?.websiteClicks == e2?.websiteClicks &&
        e1?.socialMediaClicks == e2?.socialMediaClicks &&
        e1?.pageviewGoal == e2?.pageviewGoal &&
        e1?.crmMemberId == e2?.crmMemberId &&
        e1?.crmContactId == e2?.crmContactId &&
        e1?.businessId == e2?.businessId &&
        listEquality.equals(e1?.productTypes, e2?.productTypes) &&
        e1?.state == e2?.state &&
        e1?.paid == e2?.paid &&
        listEquality.equals(e1?.visitors, e2?.visitors) &&
        e1?.eventbriteOrganizationId == e2?.eventbriteOrganizationId &&
        e1?.eventbriteToken == e2?.eventbriteToken &&
        e1?.metaIgCode == e2?.metaIgCode &&
        e1?.metaShortAccessToken == e2?.metaShortAccessToken &&
        e1?.metaIgUserID == e2?.metaIgUserID;
  }

  @override
  int hash(BusinessesRecord? e) => const ListEquality().hash([
        e?.vendorName,
        e?.createdAt,
        e?.profilePic,
        e?.address,
        e?.vendorLogo,
        e?.ratings,
        e?.totalRatings,
        e?.ratingsSum,
        e?.averageRating,
        e?.description,
        e?.photos,
        e?.claimed,
        e?.website,
        e?.facebook,
        e?.twitter,
        e?.instagram,
        e?.tiktok,
        e?.uid,
        e?.owner,
        e?.licenseType,
        e?.licenseExpiration,
        e?.approved,
        e?.affiliateLink,
        e?.promoCode,
        e?.promoDescription,
        e?.featuredBrand,
        e?.claimedDate,
        e?.phone,
        e?.email,
        e?.licenseNumber,
        e?.pos,
        e?.posSystem,
        e?.social,
        e?.b2b,
        e?.linkedin,
        e?.category,
        e?.type,
        e?.pageviews,
        e?.websiteClicks,
        e?.socialMediaClicks,
        e?.pageviewGoal,
        e?.crmMemberId,
        e?.crmContactId,
        e?.businessId,
        e?.productTypes,
        e?.state,
        e?.paid,
        e?.visitors,
        e?.eventbriteOrganizationId,
        e?.eventbriteToken,
        e?.metaIgCode,
        e?.metaShortAccessToken,
        e?.metaIgUserID
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessesRecord;
}
