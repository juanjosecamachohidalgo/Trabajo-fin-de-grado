// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_en_lista_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuariosEnListaRecord> _$usuariosEnListaRecordSerializer =
    new _$UsuariosEnListaRecordSerializer();

class _$UsuariosEnListaRecordSerializer
    implements StructuredSerializer<UsuariosEnListaRecord> {
  @override
  final Iterable<Type> types = const [
    UsuariosEnListaRecord,
    _$UsuariosEnListaRecord
  ];
  @override
  final String wireName = 'UsuariosEnListaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UsuariosEnListaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.idLista;
    if (value != null) {
      result
        ..add('id_lista')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.idUsuario;
    if (value != null) {
      result
        ..add('id_usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
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
  UsuariosEnListaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuariosEnListaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id_lista':
          result.idLista = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'id_usuario':
          result.idUsuario = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
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

class _$UsuariosEnListaRecord extends UsuariosEnListaRecord {
  @override
  final DocumentReference idLista;
  @override
  final DocumentReference idUsuario;
  @override
  final String categoria;
  @override
  final DocumentReference reference;

  factory _$UsuariosEnListaRecord(
          [void Function(UsuariosEnListaRecordBuilder) updates]) =>
      (new UsuariosEnListaRecordBuilder()..update(updates)).build();

  _$UsuariosEnListaRecord._(
      {this.idLista, this.idUsuario, this.categoria, this.reference})
      : super._();

  @override
  UsuariosEnListaRecord rebuild(
          void Function(UsuariosEnListaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuariosEnListaRecordBuilder toBuilder() =>
      new UsuariosEnListaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuariosEnListaRecord &&
        idLista == other.idLista &&
        idUsuario == other.idUsuario &&
        categoria == other.categoria &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, idLista.hashCode), idUsuario.hashCode),
            categoria.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsuariosEnListaRecord')
          ..add('idLista', idLista)
          ..add('idUsuario', idUsuario)
          ..add('categoria', categoria)
          ..add('reference', reference))
        .toString();
  }
}

class UsuariosEnListaRecordBuilder
    implements Builder<UsuariosEnListaRecord, UsuariosEnListaRecordBuilder> {
  _$UsuariosEnListaRecord _$v;

  DocumentReference _idLista;
  DocumentReference get idLista => _$this._idLista;
  set idLista(DocumentReference idLista) => _$this._idLista = idLista;

  DocumentReference _idUsuario;
  DocumentReference get idUsuario => _$this._idUsuario;
  set idUsuario(DocumentReference idUsuario) => _$this._idUsuario = idUsuario;

  String _categoria;
  String get categoria => _$this._categoria;
  set categoria(String categoria) => _$this._categoria = categoria;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  UsuariosEnListaRecordBuilder() {
    UsuariosEnListaRecord._initializeBuilder(this);
  }

  UsuariosEnListaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idLista = $v.idLista;
      _idUsuario = $v.idUsuario;
      _categoria = $v.categoria;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuariosEnListaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuariosEnListaRecord;
  }

  @override
  void update(void Function(UsuariosEnListaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsuariosEnListaRecord build() {
    final _$result = _$v ??
        new _$UsuariosEnListaRecord._(
            idLista: idLista,
            idUsuario: idUsuario,
            categoria: categoria,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
