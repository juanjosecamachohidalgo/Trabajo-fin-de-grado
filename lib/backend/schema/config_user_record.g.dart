// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConfigUserRecord> _$configUserRecordSerializer =
    new _$ConfigUserRecordSerializer();

class _$ConfigUserRecordSerializer
    implements StructuredSerializer<ConfigUserRecord> {
  @override
  final Iterable<Type> types = const [ConfigUserRecord, _$ConfigUserRecord];
  @override
  final String wireName = 'ConfigUserRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ConfigUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.vozEnable;
    if (value != null) {
      result
        ..add('voz_enable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.iteratorScreen;
    if (value != null) {
      result
        ..add('iterator_screen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  ConfigUserRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfigUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'voz_enable':
          result.vozEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iterator_screen':
          result.iteratorScreen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$ConfigUserRecord extends ConfigUserRecord {
  @override
  final bool vozEnable;
  @override
  final String iteratorScreen;
  @override
  final DocumentReference reference;

  factory _$ConfigUserRecord(
          [void Function(ConfigUserRecordBuilder) updates]) =>
      (new ConfigUserRecordBuilder()..update(updates)).build();

  _$ConfigUserRecord._({this.vozEnable, this.iteratorScreen, this.reference})
      : super._();

  @override
  ConfigUserRecord rebuild(void Function(ConfigUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigUserRecordBuilder toBuilder() =>
      new ConfigUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigUserRecord &&
        vozEnable == other.vozEnable &&
        iteratorScreen == other.iteratorScreen &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, vozEnable.hashCode), iteratorScreen.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfigUserRecord')
          ..add('vozEnable', vozEnable)
          ..add('iteratorScreen', iteratorScreen)
          ..add('reference', reference))
        .toString();
  }
}

class ConfigUserRecordBuilder
    implements Builder<ConfigUserRecord, ConfigUserRecordBuilder> {
  _$ConfigUserRecord _$v;

  bool _vozEnable;
  bool get vozEnable => _$this._vozEnable;
  set vozEnable(bool vozEnable) => _$this._vozEnable = vozEnable;

  String _iteratorScreen;
  String get iteratorScreen => _$this._iteratorScreen;
  set iteratorScreen(String iteratorScreen) =>
      _$this._iteratorScreen = iteratorScreen;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  ConfigUserRecordBuilder() {
    ConfigUserRecord._initializeBuilder(this);
  }

  ConfigUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vozEnable = $v.vozEnable;
      _iteratorScreen = $v.iteratorScreen;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigUserRecord;
  }

  @override
  void update(void Function(ConfigUserRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfigUserRecord build() {
    final _$result = _$v ??
        new _$ConfigUserRecord._(
            vozEnable: vozEnable,
            iteratorScreen: iteratorScreen,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
