// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatesStruct extends FFFirebaseStruct {
  DatesStruct({
    DateTime? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        super(firestoreUtilData);

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  static DatesStruct fromMap(Map<String, dynamic> data) => DatesStruct(
        date: data['date'] as DateTime?,
      );

  static DatesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DatesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatesStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  static DatesStruct fromAlgoliaData(Map<String, dynamic> data) => DatesStruct(
        date: convertAlgoliaParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'DatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatesStruct && date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([date]);
}

DatesStruct createDatesStruct({
  DateTime? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DatesStruct(
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DatesStruct? updateDatesStruct(
  DatesStruct? dates, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dates
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDatesStructData(
  Map<String, dynamic> firestoreData,
  DatesStruct? dates,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dates == null) {
    return;
  }
  if (dates.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dates.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final datesData = getDatesFirestoreData(dates, forFieldValue);
  final nestedData = datesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dates.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDatesFirestoreData(
  DatesStruct? dates, [
  bool forFieldValue = false,
]) {
  if (dates == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dates.toMap());

  // Add any Firestore field values
  dates.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDatesListFirestoreData(
  List<DatesStruct>? datess,
) =>
    datess?.map((e) => getDatesFirestoreData(e, true)).toList() ?? [];
