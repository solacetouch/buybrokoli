import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "excerpt" field.
  String? _excerpt;
  String get excerpt => _excerpt ?? '';
  bool hasExcerpt() => _excerpt != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "publisher" field.
  String? _publisher;
  String get publisher => _publisher ?? '';
  bool hasPublisher() => _publisher != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  bool hasViews() => _views != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _author = snapshotData['author'] as String?;
    _link = snapshotData['link'] as String?;
    _excerpt = snapshotData['excerpt'] as String?;
    _summary = snapshotData['summary'] as String?;
    _photo = snapshotData['photo'] as String?;
    _date = snapshotData['date'] as String?;
    _topic = snapshotData['topic'] as String?;
    _publisher = snapshotData['publisher'] as String?;
    _views = castToType<int>(snapshotData['views']);
    _timestamp = snapshotData['timestamp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  String? title,
  String? author,
  String? link,
  String? excerpt,
  String? summary,
  String? photo,
  String? date,
  String? topic,
  String? publisher,
  int? views,
  String? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'author': author,
      'link': link,
      'excerpt': excerpt,
      'summary': summary,
      'photo': photo,
      'date': date,
      'topic': topic,
      'publisher': publisher,
      'views': views,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.author == e2?.author &&
        e1?.link == e2?.link &&
        e1?.excerpt == e2?.excerpt &&
        e1?.summary == e2?.summary &&
        e1?.photo == e2?.photo &&
        e1?.date == e2?.date &&
        e1?.topic == e2?.topic &&
        e1?.publisher == e2?.publisher &&
        e1?.views == e2?.views &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.author,
        e?.link,
        e?.excerpt,
        e?.summary,
        e?.photo,
        e?.date,
        e?.topic,
        e?.publisher,
        e?.views,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
