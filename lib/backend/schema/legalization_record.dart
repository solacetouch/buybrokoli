import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LegalizationRecord extends FirestoreRecord {
  LegalizationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "CBDwTHC" field.
  bool? _cBDwTHC;
  bool get cBDwTHC => _cBDwTHC ?? false;
  bool hasCBDwTHC() => _cBDwTHC != null;

  // "Abbreviation" field.
  String? _abbreviation;
  String get abbreviation => _abbreviation ?? '';
  bool hasAbbreviation() => _abbreviation != null;

  // "Hemp" field.
  bool? _hemp;
  bool get hemp => _hemp ?? false;
  bool hasHemp() => _hemp != null;

  // "Recreational" field.
  bool? _recreational;
  bool get recreational => _recreational ?? false;
  bool hasRecreational() => _recreational != null;

  // "Decriminalized" field.
  bool? _decriminalized;
  bool get decriminalized => _decriminalized ?? false;
  bool hasDecriminalized() => _decriminalized != null;

  // "CBD" field.
  bool? _cbd;
  bool get cbd => _cbd ?? false;
  bool hasCbd() => _cbd != null;

  // "MedicalCannabis" field.
  bool? _medicalCannabis;
  bool get medicalCannabis => _medicalCannabis ?? false;
  bool hasMedicalCannabis() => _medicalCannabis != null;

  // "MedicalCBD" field.
  bool? _medicalCBD;
  bool get medicalCBD => _medicalCBD ?? false;
  bool hasMedicalCBD() => _medicalCBD != null;

  // "ProductTypes" field.
  List<String>? _productTypes;
  List<String> get productTypes => _productTypes ?? const [];
  bool hasProductTypes() => _productTypes != null;

  void _initializeFields() {
    _state = snapshotData['State'] as String?;
    _cBDwTHC = snapshotData['CBDwTHC'] as bool?;
    _abbreviation = snapshotData['Abbreviation'] as String?;
    _hemp = snapshotData['Hemp'] as bool?;
    _recreational = snapshotData['Recreational'] as bool?;
    _decriminalized = snapshotData['Decriminalized'] as bool?;
    _cbd = snapshotData['CBD'] as bool?;
    _medicalCannabis = snapshotData['MedicalCannabis'] as bool?;
    _medicalCBD = snapshotData['MedicalCBD'] as bool?;
    _productTypes = getDataList(snapshotData['ProductTypes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Legalization');

  static Stream<LegalizationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LegalizationRecord.fromSnapshot(s));

  static Future<LegalizationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LegalizationRecord.fromSnapshot(s));

  static LegalizationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LegalizationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LegalizationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LegalizationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LegalizationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LegalizationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLegalizationRecordData({
  String? state,
  bool? cBDwTHC,
  String? abbreviation,
  bool? hemp,
  bool? recreational,
  bool? decriminalized,
  bool? cbd,
  bool? medicalCannabis,
  bool? medicalCBD,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'State': state,
      'CBDwTHC': cBDwTHC,
      'Abbreviation': abbreviation,
      'Hemp': hemp,
      'Recreational': recreational,
      'Decriminalized': decriminalized,
      'CBD': cbd,
      'MedicalCannabis': medicalCannabis,
      'MedicalCBD': medicalCBD,
    }.withoutNulls,
  );

  return firestoreData;
}

class LegalizationRecordDocumentEquality
    implements Equality<LegalizationRecord> {
  const LegalizationRecordDocumentEquality();

  @override
  bool equals(LegalizationRecord? e1, LegalizationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.state == e2?.state &&
        e1?.cBDwTHC == e2?.cBDwTHC &&
        e1?.abbreviation == e2?.abbreviation &&
        e1?.hemp == e2?.hemp &&
        e1?.recreational == e2?.recreational &&
        e1?.decriminalized == e2?.decriminalized &&
        e1?.cbd == e2?.cbd &&
        e1?.medicalCannabis == e2?.medicalCannabis &&
        e1?.medicalCBD == e2?.medicalCBD &&
        listEquality.equals(e1?.productTypes, e2?.productTypes);
  }

  @override
  int hash(LegalizationRecord? e) => const ListEquality().hash([
        e?.state,
        e?.cBDwTHC,
        e?.abbreviation,
        e?.hemp,
        e?.recreational,
        e?.decriminalized,
        e?.cbd,
        e?.medicalCannabis,
        e?.medicalCBD,
        e?.productTypes
      ]);

  @override
  bool isValidKey(Object? o) => o is LegalizationRecord;
}
