import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdsRecord extends FirestoreRecord {
  AdsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "num_clicks" field.
  int? _numClicks;
  int get numClicks => _numClicks ?? 0;
  bool hasNumClicks() => _numClicks != null;

  // "clicked_users" field.
  List<DocumentReference>? _clickedUsers;
  List<DocumentReference> get clickedUsers => _clickedUsers ?? const [];
  bool hasClickedUsers() => _clickedUsers != null;

  // "business_owner" field.
  DocumentReference? _businessOwner;
  DocumentReference? get businessOwner => _businessOwner;
  bool hasBusinessOwner() => _businessOwner != null;

  // "cost_per_day" field.
  int? _costPerDay;
  int get costPerDay => _costPerDay ?? 0;
  bool hasCostPerDay() => _costPerDay != null;

  // "total_cost" field.
  double? _totalCost;
  double get totalCost => _totalCost ?? 0.0;
  bool hasTotalCost() => _totalCost != null;

  // "page" field.
  String? _page;
  String get page => _page ?? '';
  bool hasPage() => _page != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "buybrokoli" field.
  bool? _buybrokoli;
  bool get buybrokoli => _buybrokoli ?? false;
  bool hasBuybrokoli() => _buybrokoli != null;

  // "event" field.
  DocumentReference? _event;
  DocumentReference? get event => _event;
  bool hasEvent() => _event != null;

  // "Goal" field.
  String? _goal;
  String get goal => _goal ?? '';
  bool hasGoal() => _goal != null;

  // "reach" field.
  int? _reach;
  int get reach => _reach ?? 0;
  bool hasReach() => _reach != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _business = snapshotData['business'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _link = snapshotData['link'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _numClicks = castToType<int>(snapshotData['num_clicks']);
    _clickedUsers = getDataList(snapshotData['clicked_users']);
    _businessOwner = snapshotData['business_owner'] as DocumentReference?;
    _costPerDay = castToType<int>(snapshotData['cost_per_day']);
    _totalCost = castToType<double>(snapshotData['total_cost']);
    _page = snapshotData['page'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _buybrokoli = snapshotData['buybrokoli'] as bool?;
    _event = snapshotData['event'] as DocumentReference?;
    _goal = snapshotData['Goal'] as String?;
    _reach = castToType<int>(snapshotData['reach']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ads');

  static Stream<AdsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdsRecord.fromSnapshot(s));

  static Future<AdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdsRecord.fromSnapshot(s));

  static AdsRecord fromSnapshot(DocumentSnapshot snapshot) => AdsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdsRecordData({
  DocumentReference? business,
  String? image,
  String? link,
  DateTime? startDate,
  DateTime? endDate,
  int? numClicks,
  DocumentReference? businessOwner,
  int? costPerDay,
  double? totalCost,
  String? page,
  bool? approved,
  bool? buybrokoli,
  DocumentReference? event,
  String? goal,
  int? reach,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'business': business,
      'image': image,
      'link': link,
      'start_date': startDate,
      'end_date': endDate,
      'num_clicks': numClicks,
      'business_owner': businessOwner,
      'cost_per_day': costPerDay,
      'total_cost': totalCost,
      'page': page,
      'approved': approved,
      'buybrokoli': buybrokoli,
      'event': event,
      'Goal': goal,
      'reach': reach,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdsRecordDocumentEquality implements Equality<AdsRecord> {
  const AdsRecordDocumentEquality();

  @override
  bool equals(AdsRecord? e1, AdsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.business == e2?.business &&
        e1?.image == e2?.image &&
        e1?.link == e2?.link &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.numClicks == e2?.numClicks &&
        listEquality.equals(e1?.clickedUsers, e2?.clickedUsers) &&
        e1?.businessOwner == e2?.businessOwner &&
        e1?.costPerDay == e2?.costPerDay &&
        e1?.totalCost == e2?.totalCost &&
        e1?.page == e2?.page &&
        e1?.approved == e2?.approved &&
        e1?.buybrokoli == e2?.buybrokoli &&
        e1?.event == e2?.event &&
        e1?.goal == e2?.goal &&
        e1?.reach == e2?.reach &&
        e1?.status == e2?.status;
  }

  @override
  int hash(AdsRecord? e) => const ListEquality().hash([
        e?.business,
        e?.image,
        e?.link,
        e?.startDate,
        e?.endDate,
        e?.numClicks,
        e?.clickedUsers,
        e?.businessOwner,
        e?.costPerDay,
        e?.totalCost,
        e?.page,
        e?.approved,
        e?.buybrokoli,
        e?.event,
        e?.goal,
        e?.reach,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is AdsRecord;
}
