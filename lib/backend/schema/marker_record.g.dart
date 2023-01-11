// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarkerRecord> _$markerRecordSerializer =
    new _$MarkerRecordSerializer();

class _$MarkerRecordSerializer implements StructuredSerializer<MarkerRecord> {
  @override
  final Iterable<Type> types = const [MarkerRecord, _$MarkerRecord];
  @override
  final String wireName = 'MarkerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MarkerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('Number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('adress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.liste2;
    if (value != null) {
      result
        ..add('liste2')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
  MarkerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarkerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'liste2':
          result.liste2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
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

class _$MarkerRecord extends MarkerRecord {
  @override
  final String? name;
  @override
  final int? number;
  @override
  final String? adress;
  @override
  final LatLng? location;
  @override
  final BuiltList<int>? liste2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MarkerRecord([void Function(MarkerRecordBuilder)? updates]) =>
      (new MarkerRecordBuilder()..update(updates))._build();

  _$MarkerRecord._(
      {this.name,
      this.number,
      this.adress,
      this.location,
      this.liste2,
      this.ffRef})
      : super._();

  @override
  MarkerRecord rebuild(void Function(MarkerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarkerRecordBuilder toBuilder() => new MarkerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarkerRecord &&
        name == other.name &&
        number == other.number &&
        adress == other.adress &&
        location == other.location &&
        liste2 == other.liste2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), number.hashCode),
                    adress.hashCode),
                location.hashCode),
            liste2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MarkerRecord')
          ..add('name', name)
          ..add('number', number)
          ..add('adress', adress)
          ..add('location', location)
          ..add('liste2', liste2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MarkerRecordBuilder
    implements Builder<MarkerRecord, MarkerRecordBuilder> {
  _$MarkerRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _adress;
  String? get adress => _$this._adress;
  set adress(String? adress) => _$this._adress = adress;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  ListBuilder<int>? _liste2;
  ListBuilder<int> get liste2 => _$this._liste2 ??= new ListBuilder<int>();
  set liste2(ListBuilder<int>? liste2) => _$this._liste2 = liste2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MarkerRecordBuilder() {
    MarkerRecord._initializeBuilder(this);
  }

  MarkerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _number = $v.number;
      _adress = $v.adress;
      _location = $v.location;
      _liste2 = $v.liste2?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarkerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MarkerRecord;
  }

  @override
  void update(void Function(MarkerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MarkerRecord build() => _build();

  _$MarkerRecord _build() {
    _$MarkerRecord _$result;
    try {
      _$result = _$v ??
          new _$MarkerRecord._(
              name: name,
              number: number,
              adress: adress,
              location: location,
              liste2: _liste2?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'liste2';
        _liste2?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MarkerRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
