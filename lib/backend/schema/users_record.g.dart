// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nomprenom;
    if (value != null) {
      result
        ..add('Nomprenom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datedenaissance;
    if (value != null) {
      result
        ..add('Datedenaissance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motdepasse;
    if (value != null) {
      result
        ..add('Motdepasse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adresse;
    if (value != null) {
      result
        ..add('Adresse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.borne1rerserve;
    if (value != null) {
      result
        ..add('Borne1rerserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne2rerserve;
    if (value != null) {
      result
        ..add('Borne2rerserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne3rerserve;
    if (value != null) {
      result
        ..add('Borne3rerserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne4reserve;
    if (value != null) {
      result
        ..add('Borne4reserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne5rerserve;
    if (value != null) {
      result
        ..add('Borne5rerserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne6rerserve;
    if (value != null) {
      result
        ..add('Borne6rerserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne7reserve;
    if (value != null) {
      result
        ..add('Borne7reserve')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne1favourite;
    if (value != null) {
      result
        ..add('Borne1favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne2favourite;
    if (value != null) {
      result
        ..add('Borne2favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne3favourite;
    if (value != null) {
      result
        ..add('Borne3favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne4favourite;
    if (value != null) {
      result
        ..add('Borne4favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne5favourite;
    if (value != null) {
      result
        ..add('Borne5favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne6favourite;
    if (value != null) {
      result
        ..add('Borne6favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.borne7favourite;
    if (value != null) {
      result
        ..add('Borne7favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qradress;
    if (value != null) {
      result
        ..add('qradress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nomprenom':
          result.nomprenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Datedenaissance':
          result.datedenaissance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Motdepasse':
          result.motdepasse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Adresse':
          result.adresse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Borne1rerserve':
          result.borne1rerserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne2rerserve':
          result.borne2rerserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne3rerserve':
          result.borne3rerserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne4reserve':
          result.borne4reserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne5rerserve':
          result.borne5rerserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne6rerserve':
          result.borne6rerserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne7reserve':
          result.borne7reserve = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne1favourite':
          result.borne1favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne2favourite':
          result.borne2favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne3favourite':
          result.borne3favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne4favourite':
          result.borne4favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne5favourite':
          result.borne5favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne6favourite':
          result.borne6favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Borne7favourite':
          result.borne7favourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'qradress':
          result.qradress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? nomprenom;
  @override
  final String? datedenaissance;
  @override
  final String? motdepasse;
  @override
  final String? adresse;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final int? number;
  @override
  final bool? borne1rerserve;
  @override
  final bool? borne2rerserve;
  @override
  final bool? borne3rerserve;
  @override
  final bool? borne4reserve;
  @override
  final bool? borne5rerserve;
  @override
  final bool? borne6rerserve;
  @override
  final bool? borne7reserve;
  @override
  final bool? borne1favourite;
  @override
  final bool? borne2favourite;
  @override
  final bool? borne3favourite;
  @override
  final bool? borne4favourite;
  @override
  final bool? borne5favourite;
  @override
  final bool? borne6favourite;
  @override
  final bool? borne7favourite;
  @override
  final int? time;
  @override
  final String? qradress;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.nomprenom,
      this.datedenaissance,
      this.motdepasse,
      this.adresse,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.email,
      this.number,
      this.borne1rerserve,
      this.borne2rerserve,
      this.borne3rerserve,
      this.borne4reserve,
      this.borne5rerserve,
      this.borne6rerserve,
      this.borne7reserve,
      this.borne1favourite,
      this.borne2favourite,
      this.borne3favourite,
      this.borne4favourite,
      this.borne5favourite,
      this.borne6favourite,
      this.borne7favourite,
      this.time,
      this.qradress,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        nomprenom == other.nomprenom &&
        datedenaissance == other.datedenaissance &&
        motdepasse == other.motdepasse &&
        adresse == other.adresse &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        number == other.number &&
        borne1rerserve == other.borne1rerserve &&
        borne2rerserve == other.borne2rerserve &&
        borne3rerserve == other.borne3rerserve &&
        borne4reserve == other.borne4reserve &&
        borne5rerserve == other.borne5rerserve &&
        borne6rerserve == other.borne6rerserve &&
        borne7reserve == other.borne7reserve &&
        borne1favourite == other.borne1favourite &&
        borne2favourite == other.borne2favourite &&
        borne3favourite == other.borne3favourite &&
        borne4favourite == other.borne4favourite &&
        borne5favourite == other.borne5favourite &&
        borne6favourite == other.borne6favourite &&
        borne7favourite == other.borne7favourite &&
        time == other.time &&
        qradress == other.qradress &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, nomprenom.hashCode), datedenaissance.hashCode), motdepasse.hashCode), adresse.hashCode), displayName.hashCode), photoUrl.hashCode), uid.hashCode), createdTime.hashCode), phoneNumber.hashCode),
                                                                                email.hashCode),
                                                                            number.hashCode),
                                                                        borne1rerserve.hashCode),
                                                                    borne2rerserve.hashCode),
                                                                borne3rerserve.hashCode),
                                                            borne4reserve.hashCode),
                                                        borne5rerserve.hashCode),
                                                    borne6rerserve.hashCode),
                                                borne7reserve.hashCode),
                                            borne1favourite.hashCode),
                                        borne2favourite.hashCode),
                                    borne3favourite.hashCode),
                                borne4favourite.hashCode),
                            borne5favourite.hashCode),
                        borne6favourite.hashCode),
                    borne7favourite.hashCode),
                time.hashCode),
            qradress.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('nomprenom', nomprenom)
          ..add('datedenaissance', datedenaissance)
          ..add('motdepasse', motdepasse)
          ..add('adresse', adresse)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('number', number)
          ..add('borne1rerserve', borne1rerserve)
          ..add('borne2rerserve', borne2rerserve)
          ..add('borne3rerserve', borne3rerserve)
          ..add('borne4reserve', borne4reserve)
          ..add('borne5rerserve', borne5rerserve)
          ..add('borne6rerserve', borne6rerserve)
          ..add('borne7reserve', borne7reserve)
          ..add('borne1favourite', borne1favourite)
          ..add('borne2favourite', borne2favourite)
          ..add('borne3favourite', borne3favourite)
          ..add('borne4favourite', borne4favourite)
          ..add('borne5favourite', borne5favourite)
          ..add('borne6favourite', borne6favourite)
          ..add('borne7favourite', borne7favourite)
          ..add('time', time)
          ..add('qradress', qradress)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _nomprenom;
  String? get nomprenom => _$this._nomprenom;
  set nomprenom(String? nomprenom) => _$this._nomprenom = nomprenom;

  String? _datedenaissance;
  String? get datedenaissance => _$this._datedenaissance;
  set datedenaissance(String? datedenaissance) =>
      _$this._datedenaissance = datedenaissance;

  String? _motdepasse;
  String? get motdepasse => _$this._motdepasse;
  set motdepasse(String? motdepasse) => _$this._motdepasse = motdepasse;

  String? _adresse;
  String? get adresse => _$this._adresse;
  set adresse(String? adresse) => _$this._adresse = adresse;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  bool? _borne1rerserve;
  bool? get borne1rerserve => _$this._borne1rerserve;
  set borne1rerserve(bool? borne1rerserve) =>
      _$this._borne1rerserve = borne1rerserve;

  bool? _borne2rerserve;
  bool? get borne2rerserve => _$this._borne2rerserve;
  set borne2rerserve(bool? borne2rerserve) =>
      _$this._borne2rerserve = borne2rerserve;

  bool? _borne3rerserve;
  bool? get borne3rerserve => _$this._borne3rerserve;
  set borne3rerserve(bool? borne3rerserve) =>
      _$this._borne3rerserve = borne3rerserve;

  bool? _borne4reserve;
  bool? get borne4reserve => _$this._borne4reserve;
  set borne4reserve(bool? borne4reserve) =>
      _$this._borne4reserve = borne4reserve;

  bool? _borne5rerserve;
  bool? get borne5rerserve => _$this._borne5rerserve;
  set borne5rerserve(bool? borne5rerserve) =>
      _$this._borne5rerserve = borne5rerserve;

  bool? _borne6rerserve;
  bool? get borne6rerserve => _$this._borne6rerserve;
  set borne6rerserve(bool? borne6rerserve) =>
      _$this._borne6rerserve = borne6rerserve;

  bool? _borne7reserve;
  bool? get borne7reserve => _$this._borne7reserve;
  set borne7reserve(bool? borne7reserve) =>
      _$this._borne7reserve = borne7reserve;

  bool? _borne1favourite;
  bool? get borne1favourite => _$this._borne1favourite;
  set borne1favourite(bool? borne1favourite) =>
      _$this._borne1favourite = borne1favourite;

  bool? _borne2favourite;
  bool? get borne2favourite => _$this._borne2favourite;
  set borne2favourite(bool? borne2favourite) =>
      _$this._borne2favourite = borne2favourite;

  bool? _borne3favourite;
  bool? get borne3favourite => _$this._borne3favourite;
  set borne3favourite(bool? borne3favourite) =>
      _$this._borne3favourite = borne3favourite;

  bool? _borne4favourite;
  bool? get borne4favourite => _$this._borne4favourite;
  set borne4favourite(bool? borne4favourite) =>
      _$this._borne4favourite = borne4favourite;

  bool? _borne5favourite;
  bool? get borne5favourite => _$this._borne5favourite;
  set borne5favourite(bool? borne5favourite) =>
      _$this._borne5favourite = borne5favourite;

  bool? _borne6favourite;
  bool? get borne6favourite => _$this._borne6favourite;
  set borne6favourite(bool? borne6favourite) =>
      _$this._borne6favourite = borne6favourite;

  bool? _borne7favourite;
  bool? get borne7favourite => _$this._borne7favourite;
  set borne7favourite(bool? borne7favourite) =>
      _$this._borne7favourite = borne7favourite;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  String? _qradress;
  String? get qradress => _$this._qradress;
  set qradress(String? qradress) => _$this._qradress = qradress;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomprenom = $v.nomprenom;
      _datedenaissance = $v.datedenaissance;
      _motdepasse = $v.motdepasse;
      _adresse = $v.adresse;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _number = $v.number;
      _borne1rerserve = $v.borne1rerserve;
      _borne2rerserve = $v.borne2rerserve;
      _borne3rerserve = $v.borne3rerserve;
      _borne4reserve = $v.borne4reserve;
      _borne5rerserve = $v.borne5rerserve;
      _borne6rerserve = $v.borne6rerserve;
      _borne7reserve = $v.borne7reserve;
      _borne1favourite = $v.borne1favourite;
      _borne2favourite = $v.borne2favourite;
      _borne3favourite = $v.borne3favourite;
      _borne4favourite = $v.borne4favourite;
      _borne5favourite = $v.borne5favourite;
      _borne6favourite = $v.borne6favourite;
      _borne7favourite = $v.borne7favourite;
      _time = $v.time;
      _qradress = $v.qradress;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            nomprenom: nomprenom,
            datedenaissance: datedenaissance,
            motdepasse: motdepasse,
            adresse: adresse,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            email: email,
            number: number,
            borne1rerserve: borne1rerserve,
            borne2rerserve: borne2rerserve,
            borne3rerserve: borne3rerserve,
            borne4reserve: borne4reserve,
            borne5rerserve: borne5rerserve,
            borne6rerserve: borne6rerserve,
            borne7reserve: borne7reserve,
            borne1favourite: borne1favourite,
            borne2favourite: borne2favourite,
            borne3favourite: borne3favourite,
            borne4favourite: borne4favourite,
            borne5favourite: borne5favourite,
            borne6favourite: borne6favourite,
            borne7favourite: borne7favourite,
            time: time,
            qradress: qradress,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
