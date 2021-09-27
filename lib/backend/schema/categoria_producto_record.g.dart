// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_producto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaProductoRecord> _$categoriaProductoRecordSerializer =
    new _$CategoriaProductoRecordSerializer();

class _$CategoriaProductoRecordSerializer
    implements StructuredSerializer<CategoriaProductoRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaProductoRecord,
    _$CategoriaProductoRecord
  ];
  @override
  final String wireName = 'CategoriaProductoRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoriaProductoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombreCategoria;
    if (value != null) {
      result
        ..add('nombre_categoria')
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
  CategoriaProductoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaProductoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nombre_categoria':
          result.nombreCategoria = serializers.deserialize(value,
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

class _$CategoriaProductoRecord extends CategoriaProductoRecord {
  @override
  final String nombreCategoria;
  @override
  final DocumentReference reference;

  factory _$CategoriaProductoRecord(
          [void Function(CategoriaProductoRecordBuilder) updates]) =>
      (new CategoriaProductoRecordBuilder()..update(updates)).build();

  _$CategoriaProductoRecord._({this.nombreCategoria, this.reference})
      : super._();

  @override
  CategoriaProductoRecord rebuild(
          void Function(CategoriaProductoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaProductoRecordBuilder toBuilder() =>
      new CategoriaProductoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaProductoRecord &&
        nombreCategoria == other.nombreCategoria &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nombreCategoria.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriaProductoRecord')
          ..add('nombreCategoria', nombreCategoria)
          ..add('reference', reference))
        .toString();
  }
}

class CategoriaProductoRecordBuilder
    implements
        Builder<CategoriaProductoRecord, CategoriaProductoRecordBuilder> {
  _$CategoriaProductoRecord _$v;

  String _nombreCategoria;
  String get nombreCategoria => _$this._nombreCategoria;
  set nombreCategoria(String nombreCategoria) =>
      _$this._nombreCategoria = nombreCategoria;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  CategoriaProductoRecordBuilder() {
    CategoriaProductoRecord._initializeBuilder(this);
  }

  CategoriaProductoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreCategoria = $v.nombreCategoria;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaProductoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaProductoRecord;
  }

  @override
  void update(void Function(CategoriaProductoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriaProductoRecord build() {
    final _$result = _$v ??
        new _$CategoriaProductoRecord._(
            nombreCategoria: nombreCategoria, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
