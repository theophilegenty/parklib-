import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'Nomprenom')
  String? get nomprenom;

  @BuiltValueField(wireName: 'Datedenaissance')
  String? get datedenaissance;

  @BuiltValueField(wireName: 'Motdepasse')
  String? get motdepasse;

  @BuiltValueField(wireName: 'Adresse')
  String? get adresse;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get email;

  int? get number;

  @BuiltValueField(wireName: 'Borne1rerserve')
  bool? get borne1rerserve;

  @BuiltValueField(wireName: 'Borne2rerserve')
  bool? get borne2rerserve;

  @BuiltValueField(wireName: 'Borne3rerserve')
  bool? get borne3rerserve;

  @BuiltValueField(wireName: 'Borne4reserve')
  bool? get borne4reserve;

  @BuiltValueField(wireName: 'Borne5rerserve')
  bool? get borne5rerserve;

  @BuiltValueField(wireName: 'Borne6rerserve')
  bool? get borne6rerserve;

  @BuiltValueField(wireName: 'Borne7reserve')
  bool? get borne7reserve;

  @BuiltValueField(wireName: 'Borne1favourite')
  bool? get borne1favourite;

  @BuiltValueField(wireName: 'Borne2favourite')
  bool? get borne2favourite;

  @BuiltValueField(wireName: 'Borne3favourite')
  bool? get borne3favourite;

  @BuiltValueField(wireName: 'Borne4favourite')
  bool? get borne4favourite;

  @BuiltValueField(wireName: 'Borne5favourite')
  bool? get borne5favourite;

  @BuiltValueField(wireName: 'Borne6favourite')
  bool? get borne6favourite;

  @BuiltValueField(wireName: 'Borne7favourite')
  bool? get borne7favourite;

  int? get time;

  String? get qradress;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..nomprenom = ''
    ..datedenaissance = ''
    ..motdepasse = ''
    ..adresse = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..email = ''
    ..number = 0
    ..borne1rerserve = false
    ..borne2rerserve = false
    ..borne3rerserve = false
    ..borne4reserve = false
    ..borne5rerserve = false
    ..borne6rerserve = false
    ..borne7reserve = false
    ..borne1favourite = false
    ..borne2favourite = false
    ..borne3favourite = false
    ..borne4favourite = false
    ..borne5favourite = false
    ..borne6favourite = false
    ..borne7favourite = false
    ..time = 0
    ..qradress = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? nomprenom,
  String? datedenaissance,
  String? motdepasse,
  String? adresse,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? email,
  int? number,
  bool? borne1rerserve,
  bool? borne2rerserve,
  bool? borne3rerserve,
  bool? borne4reserve,
  bool? borne5rerserve,
  bool? borne6rerserve,
  bool? borne7reserve,
  bool? borne1favourite,
  bool? borne2favourite,
  bool? borne3favourite,
  bool? borne4favourite,
  bool? borne5favourite,
  bool? borne6favourite,
  bool? borne7favourite,
  int? time,
  String? qradress,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..nomprenom = nomprenom
        ..datedenaissance = datedenaissance
        ..motdepasse = motdepasse
        ..adresse = adresse
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..email = email
        ..number = number
        ..borne1rerserve = borne1rerserve
        ..borne2rerserve = borne2rerserve
        ..borne3rerserve = borne3rerserve
        ..borne4reserve = borne4reserve
        ..borne5rerserve = borne5rerserve
        ..borne6rerserve = borne6rerserve
        ..borne7reserve = borne7reserve
        ..borne1favourite = borne1favourite
        ..borne2favourite = borne2favourite
        ..borne3favourite = borne3favourite
        ..borne4favourite = borne4favourite
        ..borne5favourite = borne5favourite
        ..borne6favourite = borne6favourite
        ..borne7favourite = borne7favourite
        ..time = time
        ..qradress = qradress,
    ),
  );

  return firestoreData;
}
