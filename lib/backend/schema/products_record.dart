import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "product_photo" field.
  String? _productPhoto;
  String get productPhoto => _productPhoto ?? '';
  bool hasProductPhoto() => _productPhoto != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "total_ratings" field.
  int? _totalRatings;
  int get totalRatings => _totalRatings ?? 0;
  bool hasTotalRatings() => _totalRatings != null;

  // "ratings_sum" field.
  int? _ratingsSum;
  int get ratingsSum => _ratingsSum ?? 0;
  bool hasRatingsSum() => _ratingsSum != null;

  // "average_rating" field.
  double? _averageRating;
  double get averageRating => _averageRating ?? 0.0;
  bool hasAverageRating() => _averageRating != null;

  // "hidden" field.
  bool? _hidden;
  bool get hidden => _hidden ?? false;
  bool hasHidden() => _hidden != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _productPhoto = snapshotData['product_photo'] as String?;
    _id = snapshotData['id'] as String?;
    _type = snapshotData['type'] as String?;
    _category = snapshotData['category'] as String?;
    _amount = castToType<int>(snapshotData['amount']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _business = snapshotData['business'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _totalRatings = castToType<int>(snapshotData['total_ratings']);
    _ratingsSum = castToType<int>(snapshotData['ratings_sum']);
    _averageRating = castToType<double>(snapshotData['average_rating']);
    _hidden = snapshotData['hidden'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  String? productPhoto,
  String? id,
  String? type,
  String? category,
  int? amount,
  DocumentReference? owner,
  DocumentReference? business,
  double? price,
  int? totalRatings,
  int? ratingsSum,
  double? averageRating,
  bool? hidden,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'product_photo': productPhoto,
      'id': id,
      'type': type,
      'category': category,
      'amount': amount,
      'owner': owner,
      'business': business,
      'price': price,
      'total_ratings': totalRatings,
      'ratings_sum': ratingsSum,
      'average_rating': averageRating,
      'hidden': hidden,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.productPhoto == e2?.productPhoto &&
        e1?.id == e2?.id &&
        e1?.type == e2?.type &&
        e1?.category == e2?.category &&
        e1?.amount == e2?.amount &&
        e1?.owner == e2?.owner &&
        e1?.business == e2?.business &&
        e1?.price == e2?.price &&
        e1?.totalRatings == e2?.totalRatings &&
        e1?.ratingsSum == e2?.ratingsSum &&
        e1?.averageRating == e2?.averageRating &&
        e1?.hidden == e2?.hidden;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.productPhoto,
        e?.id,
        e?.type,
        e?.category,
        e?.amount,
        e?.owner,
        e?.business,
        e?.price,
        e?.totalRatings,
        e?.ratingsSum,
        e?.averageRating,
        e?.hidden
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
