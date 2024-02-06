import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class HoursRecord extends FirestoreRecord {
  HoursRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "monday" field.
  bool? _monday;
  bool get monday => _monday ?? false;
  bool hasMonday() => _monday != null;

  // "monday_start" field.
  DateTime? _mondayStart;
  DateTime? get mondayStart => _mondayStart;
  bool hasMondayStart() => _mondayStart != null;

  // "monday_end" field.
  DateTime? _mondayEnd;
  DateTime? get mondayEnd => _mondayEnd;
  bool hasMondayEnd() => _mondayEnd != null;

  // "tuesday" field.
  bool? _tuesday;
  bool get tuesday => _tuesday ?? false;
  bool hasTuesday() => _tuesday != null;

  // "tuesday_start" field.
  DateTime? _tuesdayStart;
  DateTime? get tuesdayStart => _tuesdayStart;
  bool hasTuesdayStart() => _tuesdayStart != null;

  // "tuesday_end" field.
  DateTime? _tuesdayEnd;
  DateTime? get tuesdayEnd => _tuesdayEnd;
  bool hasTuesdayEnd() => _tuesdayEnd != null;

  // "wednesday" field.
  bool? _wednesday;
  bool get wednesday => _wednesday ?? false;
  bool hasWednesday() => _wednesday != null;

  // "wednesday_start" field.
  DateTime? _wednesdayStart;
  DateTime? get wednesdayStart => _wednesdayStart;
  bool hasWednesdayStart() => _wednesdayStart != null;

  // "wednesday_end" field.
  DateTime? _wednesdayEnd;
  DateTime? get wednesdayEnd => _wednesdayEnd;
  bool hasWednesdayEnd() => _wednesdayEnd != null;

  // "thursday" field.
  bool? _thursday;
  bool get thursday => _thursday ?? false;
  bool hasThursday() => _thursday != null;

  // "thursday_start" field.
  DateTime? _thursdayStart;
  DateTime? get thursdayStart => _thursdayStart;
  bool hasThursdayStart() => _thursdayStart != null;

  // "thursday_end" field.
  DateTime? _thursdayEnd;
  DateTime? get thursdayEnd => _thursdayEnd;
  bool hasThursdayEnd() => _thursdayEnd != null;

  // "friday" field.
  bool? _friday;
  bool get friday => _friday ?? false;
  bool hasFriday() => _friday != null;

  // "friday_start" field.
  DateTime? _fridayStart;
  DateTime? get fridayStart => _fridayStart;
  bool hasFridayStart() => _fridayStart != null;

  // "friday_end" field.
  DateTime? _fridayEnd;
  DateTime? get fridayEnd => _fridayEnd;
  bool hasFridayEnd() => _fridayEnd != null;

  // "saturday" field.
  bool? _saturday;
  bool get saturday => _saturday ?? false;
  bool hasSaturday() => _saturday != null;

  // "saturday_start" field.
  DateTime? _saturdayStart;
  DateTime? get saturdayStart => _saturdayStart;
  bool hasSaturdayStart() => _saturdayStart != null;

  // "saturday_end" field.
  DateTime? _saturdayEnd;
  DateTime? get saturdayEnd => _saturdayEnd;
  bool hasSaturdayEnd() => _saturdayEnd != null;

  // "sunday" field.
  bool? _sunday;
  bool get sunday => _sunday ?? false;
  bool hasSunday() => _sunday != null;

  // "sunday_start" field.
  DateTime? _sundayStart;
  DateTime? get sundayStart => _sundayStart;
  bool hasSundayStart() => _sundayStart != null;

  // "sunday_end" field.
  DateTime? _sundayEnd;
  DateTime? get sundayEnd => _sundayEnd;
  bool hasSundayEnd() => _sundayEnd != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _monday = snapshotData['monday'] as bool?;
    _mondayStart = snapshotData['monday_start'] as DateTime?;
    _mondayEnd = snapshotData['monday_end'] as DateTime?;
    _tuesday = snapshotData['tuesday'] as bool?;
    _tuesdayStart = snapshotData['tuesday_start'] as DateTime?;
    _tuesdayEnd = snapshotData['tuesday_end'] as DateTime?;
    _wednesday = snapshotData['wednesday'] as bool?;
    _wednesdayStart = snapshotData['wednesday_start'] as DateTime?;
    _wednesdayEnd = snapshotData['wednesday_end'] as DateTime?;
    _thursday = snapshotData['thursday'] as bool?;
    _thursdayStart = snapshotData['thursday_start'] as DateTime?;
    _thursdayEnd = snapshotData['thursday_end'] as DateTime?;
    _friday = snapshotData['friday'] as bool?;
    _fridayStart = snapshotData['friday_start'] as DateTime?;
    _fridayEnd = snapshotData['friday_end'] as DateTime?;
    _saturday = snapshotData['saturday'] as bool?;
    _saturdayStart = snapshotData['saturday_start'] as DateTime?;
    _saturdayEnd = snapshotData['saturday_end'] as DateTime?;
    _sunday = snapshotData['sunday'] as bool?;
    _sundayStart = snapshotData['sunday_start'] as DateTime?;
    _sundayEnd = snapshotData['sunday_end'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('hours')
          : FirebaseFirestore.instance.collectionGroup('hours');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('hours').doc(id);

  static Stream<HoursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HoursRecord.fromSnapshot(s));

  static Future<HoursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HoursRecord.fromSnapshot(s));

  static HoursRecord fromSnapshot(DocumentSnapshot snapshot) => HoursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HoursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HoursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HoursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HoursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHoursRecordData({
  bool? monday,
  DateTime? mondayStart,
  DateTime? mondayEnd,
  bool? tuesday,
  DateTime? tuesdayStart,
  DateTime? tuesdayEnd,
  bool? wednesday,
  DateTime? wednesdayStart,
  DateTime? wednesdayEnd,
  bool? thursday,
  DateTime? thursdayStart,
  DateTime? thursdayEnd,
  bool? friday,
  DateTime? fridayStart,
  DateTime? fridayEnd,
  bool? saturday,
  DateTime? saturdayStart,
  DateTime? saturdayEnd,
  bool? sunday,
  DateTime? sundayStart,
  DateTime? sundayEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'monday': monday,
      'monday_start': mondayStart,
      'monday_end': mondayEnd,
      'tuesday': tuesday,
      'tuesday_start': tuesdayStart,
      'tuesday_end': tuesdayEnd,
      'wednesday': wednesday,
      'wednesday_start': wednesdayStart,
      'wednesday_end': wednesdayEnd,
      'thursday': thursday,
      'thursday_start': thursdayStart,
      'thursday_end': thursdayEnd,
      'friday': friday,
      'friday_start': fridayStart,
      'friday_end': fridayEnd,
      'saturday': saturday,
      'saturday_start': saturdayStart,
      'saturday_end': saturdayEnd,
      'sunday': sunday,
      'sunday_start': sundayStart,
      'sunday_end': sundayEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class HoursRecordDocumentEquality implements Equality<HoursRecord> {
  const HoursRecordDocumentEquality();

  @override
  bool equals(HoursRecord? e1, HoursRecord? e2) {
    return e1?.monday == e2?.monday &&
        e1?.mondayStart == e2?.mondayStart &&
        e1?.mondayEnd == e2?.mondayEnd &&
        e1?.tuesday == e2?.tuesday &&
        e1?.tuesdayStart == e2?.tuesdayStart &&
        e1?.tuesdayEnd == e2?.tuesdayEnd &&
        e1?.wednesday == e2?.wednesday &&
        e1?.wednesdayStart == e2?.wednesdayStart &&
        e1?.wednesdayEnd == e2?.wednesdayEnd &&
        e1?.thursday == e2?.thursday &&
        e1?.thursdayStart == e2?.thursdayStart &&
        e1?.thursdayEnd == e2?.thursdayEnd &&
        e1?.friday == e2?.friday &&
        e1?.fridayStart == e2?.fridayStart &&
        e1?.fridayEnd == e2?.fridayEnd &&
        e1?.saturday == e2?.saturday &&
        e1?.saturdayStart == e2?.saturdayStart &&
        e1?.saturdayEnd == e2?.saturdayEnd &&
        e1?.sunday == e2?.sunday &&
        e1?.sundayStart == e2?.sundayStart &&
        e1?.sundayEnd == e2?.sundayEnd;
  }

  @override
  int hash(HoursRecord? e) => const ListEquality().hash([
        e?.monday,
        e?.mondayStart,
        e?.mondayEnd,
        e?.tuesday,
        e?.tuesdayStart,
        e?.tuesdayEnd,
        e?.wednesday,
        e?.wednesdayStart,
        e?.wednesdayEnd,
        e?.thursday,
        e?.thursdayStart,
        e?.thursdayEnd,
        e?.friday,
        e?.fridayStart,
        e?.fridayEnd,
        e?.saturday,
        e?.saturdayStart,
        e?.saturdayEnd,
        e?.sunday,
        e?.sundayStart,
        e?.sundayEnd
      ]);

  @override
  bool isValidKey(Object? o) => o is HoursRecord;
}
