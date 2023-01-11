import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'marker_record.g.dart';

abstract class MarkerRecord
    implements Built<MarkerRecord, MarkerRecordBuilder> {
  static Serializer<MarkerRecord> get serializer => _$markerRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Number')
  int? get number;

  String? get adress;

  LatLng? get location;

  BuiltList<int>? get liste2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MarkerRecordBuilder builder) => builder
    ..name = ''
    ..number = 0
    ..adress = ''
    ..liste2 = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Marker');

  static Stream<MarkerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MarkerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MarkerRecord._();
  factory MarkerRecord([void Function(MarkerRecordBuilder) updates]) =
      _$MarkerRecord;

  static MarkerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMarkerRecordData({
  String? name,
  int? number,
  String? adress,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    MarkerRecord.serializer,
    MarkerRecord(
      (m) => m
        ..name = name
        ..number = number
        ..adress = adress
        ..location = location
        ..liste2 = null,
    ),
  );

  return firestoreData;
}
