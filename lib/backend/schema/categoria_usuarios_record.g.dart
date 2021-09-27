// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_usuarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaUsuariosRecord> _$categoriaUsuariosRecordSerializer =
    new _$CategoriaUsuariosRecordSerializer();

class _$CategoriaUsuariosRecordSerializer
    implements StructuredSerializer<CategoriaUsuariosRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaUsuariosRecord,
    _$CategoriaUsuariosRecord
  ];
  @override
  final String wireName = 'CategoriaUsuariosRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoriaUsuariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.idUsuario;
    if (value != null) {
      result
        ..add('id_usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
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
  CategoriaUsuariosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaUsuariosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id_usuario':
          result.idUsuario = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
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

class _$CategoriaUsuariosRecord extends CategoriaUsuariosRecord {
  @override
  final DocumentReference idUsuario;
  @override
  final String nombreCategoria;
  @override
  final DocumentReference reference;

  factory _$CategoriaUsuariosRecord(
          [void Function(CategoriaUsuariosRecordBuilder) updates]) =>
      (new CategoriaUsuariosRecordBuilder()..update(updates)).build();

  _$CategoriaUsuariosRecord._(
      {this.idUsuario, this.nombreCategoria, this.reference})
      : super._();

  @override
  CategoriaUsuariosRecord rebuild(
          void Function(CategoriaUsuariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaUsuariosRecordBuilder toBuilder() =>
      new CategoriaUsuariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaUsuariosRecord &&
        idUsuario == other.idUsuario &&
        nombreCategoria == other.nombreCategoria &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, idUsuario.hashCode), nombreCategoria.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriaUsuariosRecord')
          ..add('idUsuario', idUsuario)
          ..add('nombreCategoria', nombreCategoria)
          ..add('reference', reference))
        .toString();
  }
}

class CategoriaUsuariosRecordBuilder
    implements
        Builder<CategoriaUsuariosRecord, CategoriaUsuariosRecordBuilder> {
  _$CategoriaUsuariosRecord _$v;

  DocumentReference _idUsuario;
  DocumentReference get idUsuario => _$this._idUsuario;
  set idUsuario(DocumentReference idUsuario) => _$this._idUsuario = idUsuario;

  String _nombreCategoria;
  String get nombreCategoria => _$this._nombreCategoria;
  set nombreCategoria(String nombreCategoria) =>
      _$this._nombreCategoria = nombreCategoria;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  CategoriaUsuariosRecordBuilder() {
    CategoriaUsuariosRecord._initializeBuilder(this);
  }

  CategoriaUsuariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idUsuario = $v.idUsuario;
      _nombreCategoria = $v.nombreCategoria;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaUsuariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaUsuariosRecord;
  }

  @override
  void update(void Function(CategoriaUsuariosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriaUsuariosRecord build() {
    final _$result = _$v ??
        new _$CategoriaUsuariosRecord._(
            idUsuario: idUsuario,
            nombreCategoria: nombreCategoria,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
