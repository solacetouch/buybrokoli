import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventSuggestionsRecord extends FirestoreRecord {
  EventSuggestionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "eventDate" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "eventLocation" field.
  LatLng? _eventLocation;
  LatLng? get eventLocation => _eventLocation;
  bool hasEventLocation() => _eventLocation != null;

  // "eventAddress" field.
  String? _eventAddress;
  String get eventAddress => _eventAddress ?? '';
  bool hasEventAddress() => _eventAddress != null;

  // "eventDescription" field.
  String? _eventDescription;
  String get eventDescription => _eventDescription ?? '';
  bool hasEventDescription() => _eventDescription != null;

  // "eventFlyer" field.
  String? _eventFlyer;
  String get eventFlyer => _eventFlyer ?? '';
  bool hasEventFlyer() => _eventFlyer != null;

  // "eventCost" field.
  double? _eventCost;
  double get eventCost => _eventCost ?? 0.0;
  bool hasEventCost() => _eventCost != null;

  // "eventOrganizer" field.
  String? _eventOrganizer;
  String get eventOrganizer => _eventOrganizer ?? '';
  bool hasEventOrganizer() => _eventOrganizer != null;

  // "eventLink" field.
  String? _eventLink;
  String get eventLink => _eventLink ?? '';
  bool hasEventLink() => _eventLink != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "location_city_state" field.
  String? _locationCityState;
  String get locationCityState => _locationCityState ?? '';
  bool hasLocationCityState() => _locationCityState != null;

  void _initializeFields() {
    _eventName = snapshotData['eventName'] as String?;
    _eventDate = snapshotData['eventDate'] as DateTime?;
    _eventLocation = snapshotData['eventLocation'] as LatLng?;
    _eventAddress = snapshotData['eventAddress'] as String?;
    _eventDescription = snapshotData['eventDescription'] as String?;
    _eventFlyer = snapshotData['eventFlyer'] as String?;
    _eventCost = castToType<double>(snapshotData['eventCost']);
    _eventOrganizer = snapshotData['eventOrganizer'] as String?;
    _eventLink = snapshotData['eventLink'] as String?;
    _status = snapshotData['status'] as String?;
    _locationCityState = snapshotData['location_city_state'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventSuggestions');

  static Stream<EventSuggestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventSuggestionsRecord.fromSnapshot(s));

  static Future<EventSuggestionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EventSuggestionsRecord.fromSnapshot(s));

  static EventSuggestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventSuggestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventSuggestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventSuggestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventSuggestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventSuggestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventSuggestionsRecordData({
  String? eventName,
  DateTime? eventDate,
  LatLng? eventLocation,
  String? eventAddress,
  String? eventDescription,
  String? eventFlyer,
  double? eventCost,
  String? eventOrganizer,
  String? eventLink,
  String? status,
  String? locationCityState,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventName': eventName,
      'eventDate': eventDate,
      'eventLocation': eventLocation,
      'eventAddress': eventAddress,
      'eventDescription': eventDescription,
      'eventFlyer': eventFlyer,
      'eventCost': eventCost,
      'eventOrganizer': eventOrganizer,
      'eventLink': eventLink,
      'status': status,
      'location_city_state': locationCityState,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventSuggestionsRecordDocumentEquality
    implements Equality<EventSuggestionsRecord> {
  const EventSuggestionsRecordDocumentEquality();

  @override
  bool equals(EventSuggestionsRecord? e1, EventSuggestionsRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventAddress == e2?.eventAddress &&
        e1?.eventDescription == e2?.eventDescription &&
        e1?.eventFlyer == e2?.eventFlyer &&
        e1?.eventCost == e2?.eventCost &&
        e1?.eventOrganizer == e2?.eventOrganizer &&
        e1?.eventLink == e2?.eventLink &&
        e1?.status == e2?.status &&
        e1?.locationCityState == e2?.locationCityState;
  }

  @override
  int hash(EventSuggestionsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.eventDate,
        e?.eventLocation,
        e?.eventAddress,
        e?.eventDescription,
        e?.eventFlyer,
        e?.eventCost,
        e?.eventOrganizer,
        e?.eventLink,
        e?.status,
        e?.locationCityState
      ]);

  @override
  bool isValidKey(Object? o) => o is EventSuggestionsRecord;
}
