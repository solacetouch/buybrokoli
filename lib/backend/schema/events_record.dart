import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_date" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "event_description" field.
  String? _eventDescription;
  String get eventDescription => _eventDescription ?? '';
  bool hasEventDescription() => _eventDescription != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "event_pic" field.
  String? _eventPic;
  String get eventPic => _eventPic ?? '';
  bool hasEventPic() => _eventPic != null;

  // "location_Address" field.
  String? _locationAddress;
  String get locationAddress => _locationAddress ?? '';
  bool hasLocationAddress() => _locationAddress != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "location_city_state" field.
  String? _locationCityState;
  String get locationCityState => _locationCityState ?? '';
  bool hasLocationCityState() => _locationCityState != null;

  // "searchFields" field.
  String? _searchFields;
  String get searchFields => _searchFields ?? '';
  bool hasSearchFields() => _searchFields != null;

  // "in_app" field.
  bool? _inApp;
  bool get inApp => _inApp ?? false;
  bool hasInApp() => _inApp != null;

  // "business_event" field.
  bool? _businessEvent;
  bool get businessEvent => _businessEvent ?? false;
  bool hasBusinessEvent() => _businessEvent != null;

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "eventbriteID" field.
  String? _eventbriteID;
  String get eventbriteID => _eventbriteID ?? '';
  bool hasEventbriteID() => _eventbriteID != null;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _eventDate = snapshotData['event_date'] as DateTime?;
    _eventDescription = snapshotData['event_description'] as String?;
    _link = snapshotData['link'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _eventPic = snapshotData['event_pic'] as String?;
    _locationAddress = snapshotData['location_Address'] as String?;
    _id = snapshotData['id'] as String?;
    _locationCityState = snapshotData['location_city_state'] as String?;
    _searchFields = snapshotData['searchFields'] as String?;
    _inApp = snapshotData['in_app'] as bool?;
    _businessEvent = snapshotData['business_event'] as bool?;
    _business = snapshotData['business'] as DocumentReference?;
    _eventbriteID = snapshotData['eventbriteID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  DateTime? eventDate,
  String? eventDescription,
  String? link,
  DateTime? createdAt,
  LatLng? location,
  String? eventPic,
  String? locationAddress,
  String? id,
  String? locationCityState,
  String? searchFields,
  bool? inApp,
  bool? businessEvent,
  DocumentReference? business,
  String? eventbriteID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'event_date': eventDate,
      'event_description': eventDescription,
      'link': link,
      'created_at': createdAt,
      'location': location,
      'event_pic': eventPic,
      'location_Address': locationAddress,
      'id': id,
      'location_city_state': locationCityState,
      'searchFields': searchFields,
      'in_app': inApp,
      'business_event': businessEvent,
      'business': business,
      'eventbriteID': eventbriteID,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventDescription == e2?.eventDescription &&
        e1?.link == e2?.link &&
        e1?.createdAt == e2?.createdAt &&
        e1?.location == e2?.location &&
        e1?.eventPic == e2?.eventPic &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.id == e2?.id &&
        e1?.locationCityState == e2?.locationCityState &&
        e1?.searchFields == e2?.searchFields &&
        e1?.inApp == e2?.inApp &&
        e1?.businessEvent == e2?.businessEvent &&
        e1?.business == e2?.business &&
        e1?.eventbriteID == e2?.eventbriteID;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.eventDate,
        e?.eventDescription,
        e?.link,
        e?.createdAt,
        e?.location,
        e?.eventPic,
        e?.locationAddress,
        e?.id,
        e?.locationCityState,
        e?.searchFields,
        e?.inApp,
        e?.businessEvent,
        e?.business,
        e?.eventbriteID
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
