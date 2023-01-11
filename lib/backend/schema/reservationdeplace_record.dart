import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reservationdeplace_record.g.dart';

abstract class ReservationdeplaceRecord
    implements
        Built<ReservationdeplaceRecord, ReservationdeplaceRecordBuilder> {
  static Serializer<ReservationdeplaceRecord> get serializer =>
      _$reservationdeplaceRecordSerializer;

  @BuiltValueField(wireName: 'Nombredeplaceborne1')
  int? get nombredeplaceborne1;

  @BuiltValueField(wireName: 'Nombredeplaceborne2')
  int? get nombredeplaceborne2;

  @BuiltValueField(wireName: 'Nombredeplaceborne3')
  int? get nombredeplaceborne3;

  @BuiltValueField(wireName: 'Nombredeplaceborne4')
  int? get nombredeplaceborne4;

  @BuiltValueField(wireName: 'Nombredeplaceborne5')
  int? get nombredeplaceborne5;

  @BuiltValueField(wireName: 'Nombredeplaceborne6')
  int? get nombredeplaceborne6;

  @BuiltValueField(wireName: 'Nombredeplaceborne7')
  int? get nombredeplaceborne7;

  DateTime? get time;

  int? get timev2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReservationdeplaceRecordBuilder builder) =>
      builder
        ..nombredeplaceborne1 = 0
        ..nombredeplaceborne2 = 0
        ..nombredeplaceborne3 = 0
        ..nombredeplaceborne4 = 0
        ..nombredeplaceborne5 = 0
        ..nombredeplaceborne6 = 0
        ..nombredeplaceborne7 = 0
        ..timev2 = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservationdeplace');

  static Stream<ReservationdeplaceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReservationdeplaceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReservationdeplaceRecord._();
  factory ReservationdeplaceRecord(
          [void Function(ReservationdeplaceRecordBuilder) updates]) =
      _$ReservationdeplaceRecord;

  static ReservationdeplaceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReservationdeplaceRecordData({
  int? nombredeplaceborne1,
  int? nombredeplaceborne2,
  int? nombredeplaceborne3,
  int? nombredeplaceborne4,
  int? nombredeplaceborne5,
  int? nombredeplaceborne6,
  int? nombredeplaceborne7,
  DateTime? time,
  int? timev2,
}) {
  final firestoreData = serializers.toFirestore(
    ReservationdeplaceRecord.serializer,
    ReservationdeplaceRecord(
      (r) => r
        ..nombredeplaceborne1 = nombredeplaceborne1
        ..nombredeplaceborne2 = nombredeplaceborne2
        ..nombredeplaceborne3 = nombredeplaceborne3
        ..nombredeplaceborne4 = nombredeplaceborne4
        ..nombredeplaceborne5 = nombredeplaceborne5
        ..nombredeplaceborne6 = nombredeplaceborne6
        ..nombredeplaceborne7 = nombredeplaceborne7
        ..time = time
        ..timev2 = timev2,
    ),
  );

  return firestoreData;
}
