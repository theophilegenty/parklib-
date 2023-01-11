// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservationdeplace_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReservationdeplaceRecord> _$reservationdeplaceRecordSerializer =
    new _$ReservationdeplaceRecordSerializer();

class _$ReservationdeplaceRecordSerializer
    implements StructuredSerializer<ReservationdeplaceRecord> {
  @override
  final Iterable<Type> types = const [
    ReservationdeplaceRecord,
    _$ReservationdeplaceRecord
  ];
  @override
  final String wireName = 'ReservationdeplaceRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ReservationdeplaceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombredeplaceborne1;
    if (value != null) {
      result
        ..add('Nombredeplaceborne1')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombredeplaceborne2;
    if (value != null) {
      result
        ..add('Nombredeplaceborne2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombredeplaceborne3;
    if (value != null) {
      result
        ..add('Nombredeplaceborne3')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombredeplaceborne4;
    if (value != null) {
      result
        ..add('Nombredeplaceborne4')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombredeplaceborne5;
    if (value != null) {
      result
        ..add('Nombredeplaceborne5')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombredeplaceborne6;
    if (value != null) {
      result
        ..add('Nombredeplaceborne6')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombredeplaceborne7;
    if (value != null) {
      result
        ..add('Nombredeplaceborne7')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timev2;
    if (value != null) {
      result
        ..add('timev2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ReservationdeplaceRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReservationdeplaceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombredeplaceborne1':
          result.nombredeplaceborne1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Nombredeplaceborne2':
          result.nombredeplaceborne2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Nombredeplaceborne3':
          result.nombredeplaceborne3 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Nombredeplaceborne4':
          result.nombredeplaceborne4 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Nombredeplaceborne5':
          result.nombredeplaceborne5 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Nombredeplaceborne6':
          result.nombredeplaceborne6 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Nombredeplaceborne7':
          result.nombredeplaceborne7 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'timev2':
          result.timev2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ReservationdeplaceRecord extends ReservationdeplaceRecord {
  @override
  final int? nombredeplaceborne1;
  @override
  final int? nombredeplaceborne2;
  @override
  final int? nombredeplaceborne3;
  @override
  final int? nombredeplaceborne4;
  @override
  final int? nombredeplaceborne5;
  @override
  final int? nombredeplaceborne6;
  @override
  final int? nombredeplaceborne7;
  @override
  final DateTime? time;
  @override
  final int? timev2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReservationdeplaceRecord(
          [void Function(ReservationdeplaceRecordBuilder)? updates]) =>
      (new ReservationdeplaceRecordBuilder()..update(updates))._build();

  _$ReservationdeplaceRecord._(
      {this.nombredeplaceborne1,
      this.nombredeplaceborne2,
      this.nombredeplaceborne3,
      this.nombredeplaceborne4,
      this.nombredeplaceborne5,
      this.nombredeplaceborne6,
      this.nombredeplaceborne7,
      this.time,
      this.timev2,
      this.ffRef})
      : super._();

  @override
  ReservationdeplaceRecord rebuild(
          void Function(ReservationdeplaceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationdeplaceRecordBuilder toBuilder() =>
      new ReservationdeplaceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservationdeplaceRecord &&
        nombredeplaceborne1 == other.nombredeplaceborne1 &&
        nombredeplaceborne2 == other.nombredeplaceborne2 &&
        nombredeplaceborne3 == other.nombredeplaceborne3 &&
        nombredeplaceborne4 == other.nombredeplaceborne4 &&
        nombredeplaceborne5 == other.nombredeplaceborne5 &&
        nombredeplaceborne6 == other.nombredeplaceborne6 &&
        nombredeplaceborne7 == other.nombredeplaceborne7 &&
        time == other.time &&
        timev2 == other.timev2 &&
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
                                    $jc($jc(0, nombredeplaceborne1.hashCode),
                                        nombredeplaceborne2.hashCode),
                                    nombredeplaceborne3.hashCode),
                                nombredeplaceborne4.hashCode),
                            nombredeplaceborne5.hashCode),
                        nombredeplaceborne6.hashCode),
                    nombredeplaceborne7.hashCode),
                time.hashCode),
            timev2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReservationdeplaceRecord')
          ..add('nombredeplaceborne1', nombredeplaceborne1)
          ..add('nombredeplaceborne2', nombredeplaceborne2)
          ..add('nombredeplaceborne3', nombredeplaceborne3)
          ..add('nombredeplaceborne4', nombredeplaceborne4)
          ..add('nombredeplaceborne5', nombredeplaceborne5)
          ..add('nombredeplaceborne6', nombredeplaceborne6)
          ..add('nombredeplaceborne7', nombredeplaceborne7)
          ..add('time', time)
          ..add('timev2', timev2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReservationdeplaceRecordBuilder
    implements
        Builder<ReservationdeplaceRecord, ReservationdeplaceRecordBuilder> {
  _$ReservationdeplaceRecord? _$v;

  int? _nombredeplaceborne1;
  int? get nombredeplaceborne1 => _$this._nombredeplaceborne1;
  set nombredeplaceborne1(int? nombredeplaceborne1) =>
      _$this._nombredeplaceborne1 = nombredeplaceborne1;

  int? _nombredeplaceborne2;
  int? get nombredeplaceborne2 => _$this._nombredeplaceborne2;
  set nombredeplaceborne2(int? nombredeplaceborne2) =>
      _$this._nombredeplaceborne2 = nombredeplaceborne2;

  int? _nombredeplaceborne3;
  int? get nombredeplaceborne3 => _$this._nombredeplaceborne3;
  set nombredeplaceborne3(int? nombredeplaceborne3) =>
      _$this._nombredeplaceborne3 = nombredeplaceborne3;

  int? _nombredeplaceborne4;
  int? get nombredeplaceborne4 => _$this._nombredeplaceborne4;
  set nombredeplaceborne4(int? nombredeplaceborne4) =>
      _$this._nombredeplaceborne4 = nombredeplaceborne4;

  int? _nombredeplaceborne5;
  int? get nombredeplaceborne5 => _$this._nombredeplaceborne5;
  set nombredeplaceborne5(int? nombredeplaceborne5) =>
      _$this._nombredeplaceborne5 = nombredeplaceborne5;

  int? _nombredeplaceborne6;
  int? get nombredeplaceborne6 => _$this._nombredeplaceborne6;
  set nombredeplaceborne6(int? nombredeplaceborne6) =>
      _$this._nombredeplaceborne6 = nombredeplaceborne6;

  int? _nombredeplaceborne7;
  int? get nombredeplaceborne7 => _$this._nombredeplaceborne7;
  set nombredeplaceborne7(int? nombredeplaceborne7) =>
      _$this._nombredeplaceborne7 = nombredeplaceborne7;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  int? _timev2;
  int? get timev2 => _$this._timev2;
  set timev2(int? timev2) => _$this._timev2 = timev2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReservationdeplaceRecordBuilder() {
    ReservationdeplaceRecord._initializeBuilder(this);
  }

  ReservationdeplaceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombredeplaceborne1 = $v.nombredeplaceborne1;
      _nombredeplaceborne2 = $v.nombredeplaceborne2;
      _nombredeplaceborne3 = $v.nombredeplaceborne3;
      _nombredeplaceborne4 = $v.nombredeplaceborne4;
      _nombredeplaceborne5 = $v.nombredeplaceborne5;
      _nombredeplaceborne6 = $v.nombredeplaceborne6;
      _nombredeplaceborne7 = $v.nombredeplaceborne7;
      _time = $v.time;
      _timev2 = $v.timev2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservationdeplaceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservationdeplaceRecord;
  }

  @override
  void update(void Function(ReservationdeplaceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservationdeplaceRecord build() => _build();

  _$ReservationdeplaceRecord _build() {
    final _$result = _$v ??
        new _$ReservationdeplaceRecord._(
            nombredeplaceborne1: nombredeplaceborne1,
            nombredeplaceborne2: nombredeplaceborne2,
            nombredeplaceborne3: nombredeplaceborne3,
            nombredeplaceborne4: nombredeplaceborne4,
            nombredeplaceborne5: nombredeplaceborne5,
            nombredeplaceborne6: nombredeplaceborne6,
            nombredeplaceborne7: nombredeplaceborne7,
            time: time,
            timev2: timev2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
