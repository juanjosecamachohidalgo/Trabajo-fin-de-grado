// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListaRecord> _$listaRecordSerializer = new _$ListaRecordSerializer();

class _$ListaRecordSerializer implements StructuredSerializer<ListaRecord> {
  @override
  final Iterable<Type> types = const [ListaRecord, _$ListaRecord];
  @override
  final String wireName = 'ListaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ListaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.creador;
    if (value != null) {
      result
        ..add('creador')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.fondo;
    if (value != null) {
      result
        ..add('fondo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usuariosEnLista;
    if (value != null) {
      result
        ..add('usuarios_en_lista')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.numeroProductos;
    if (value != null) {
      result
        ..add('numero_productos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ListaRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'creador':
          result.creador = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'fondo':
          result.fondo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'usuarios_en_lista':
          result.usuariosEnLista = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'numero_productos':
          result.numeroProductos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$ListaRecord extends ListaRecord {
  @override
  final DocumentReference creador;
  @override
  final String fondo;
  @override
  final String titulo;
  @override
  final DocumentReference usuariosEnLista;
  @override
  final int numeroProductos;
  @override
  final DocumentReference reference;

  factory _$ListaRecord([void Function(ListaRecordBuilder) updates]) =>
      (new ListaRecordBuilder()..update(updates)).build();

  _$ListaRecord._(
      {this.creador,
      this.fondo,
      this.titulo,
      this.usuariosEnLista,
      this.numeroProductos,
      this.reference})
      : super._();

  @override
  ListaRecord rebuild(void Function(ListaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListaRecordBuilder toBuilder() => new ListaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListaRecord &&
        creador == other.creador &&
        fondo == other.fondo &&
        titulo == other.titulo &&
        usuariosEnLista == other.usuariosEnLista &&
        numeroProductos == other.numeroProductos &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, creador.hashCode), fondo.hashCode),
                    titulo.hashCode),
                usuariosEnLista.hashCode),
            numeroProductos.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListaRecord')
          ..add('creador', creador)
          ..add('fondo', fondo)
          ..add('titulo', titulo)
          ..add('usuariosEnLista', usuariosEnLista)
          ..add('numeroProductos', numeroProductos)
          ..add('reference', reference))
        .toString();
  }
}

class ListaRecordBuilder implements Builder<ListaRecord, ListaRecordBuilder> {
  _$ListaRecord _$v;

  DocumentReference _creador;
  DocumentReference get creador => _$this._creador;
  set creador(DocumentReference creador) => _$this._creador = creador;

  String _fondo;
  String get fondo => _$this._fondo;
  set fondo(String fondo) => _$this._fondo = fondo;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  DocumentReference _usuariosEnLista;
  DocumentReference get usuariosEnLista => _$this._usuariosEnLista;
  set usuariosEnLista(DocumentReference usuariosEnLista) =>
      _$this._usuariosEnLista = usuariosEnLista;

  int _numeroProductos;
  int get numeroProductos => _$this._numeroProductos;
  set numeroProductos(int numeroProductos) =>
      _$this._numeroProductos = numeroProductos;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  ListaRecordBuilder() {
    ListaRecord._initializeBuilder(this);
  }

  ListaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creador = $v.creador;
      _fondo = $v.fondo;
      _titulo = $v.titulo;
      _usuariosEnLista = $v.usuariosEnLista;
      _numeroProductos = $v.numeroProductos;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListaRecord;
  }

  @override
  void update(void Function(ListaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListaRecord build() {
    final _$result = _$v ??
        new _$ListaRecord._(
            creador: creador,
            fondo: fondo,
            titulo: titulo,
            usuariosEnLista: usuariosEnLista,
            numeroProductos: numeroProductos,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
