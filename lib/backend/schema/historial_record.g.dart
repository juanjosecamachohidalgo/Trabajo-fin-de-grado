// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historial_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistorialRecord> _$historialRecordSerializer =
    new _$HistorialRecordSerializer();

class _$HistorialRecordSerializer
    implements StructuredSerializer<HistorialRecord> {
  @override
  final Iterable<Type> types = const [HistorialRecord, _$HistorialRecord];
  @override
  final String wireName = 'HistorialRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HistorialRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.fecha;
    if (value != null) {
      result
        ..add('fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Timestamp)));
    }
    value = object.idProducto;
    if (value != null) {
      result
        ..add('id_producto')
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
  HistorialRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistorialRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(Timestamp)) as Timestamp;
          break;
        case 'id_producto':
          result.idProducto = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'id_usuario':
          result.idUsuario = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
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

class _$HistorialRecord extends HistorialRecord {
  @override
  final Timestamp fecha;
  @override
  final DocumentReference idProducto;
  @override
  final DocumentReference idUsuario;
  @override
  final DocumentReference reference;

  factory _$HistorialRecord([void Function(HistorialRecordBuilder) updates]) =>
      (new HistorialRecordBuilder()..update(updates)).build();

  _$HistorialRecord._(
      {this.fecha, this.idProducto, this.idUsuario, this.reference})
      : super._();

  @override
  HistorialRecord rebuild(void Function(HistorialRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistorialRecordBuilder toBuilder() =>
      new HistorialRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistorialRecord &&
        fecha == other.fecha &&
        idProducto == other.idProducto &&
        idUsuario == other.idUsuario &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fecha.hashCode), idProducto.hashCode),
            idUsuario.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistorialRecord')
          ..add('fecha', fecha)
          ..add('idProducto', idProducto)
          ..add('idUsuario', idUsuario)
          ..add('reference', reference))
        .toString();
  }
}

class HistorialRecordBuilder
    implements Builder<HistorialRecord, HistorialRecordBuilder> {
  _$HistorialRecord _$v;

  Timestamp _fecha;
  Timestamp get fecha => _$this._fecha;
  set fecha(Timestamp fecha) => _$this._fecha = fecha;

  DocumentReference _idProducto;
  DocumentReference get idProducto => _$this._idProducto;
  set idProducto(DocumentReference idProducto) =>
      _$this._idProducto = idProducto;

  DocumentReference _idUsuario;
  DocumentReference get idUsuario => _$this._idUsuario;
  set idUsuario(DocumentReference idUsuario) => _$this._idUsuario = idUsuario;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  HistorialRecordBuilder() {
    HistorialRecord._initializeBuilder(this);
  }

  HistorialRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fecha = $v.fecha;
      _idProducto = $v.idProducto;
      _idUsuario = $v.idUsuario;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistorialRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistorialRecord;
  }

  @override
  void update(void Function(HistorialRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistorialRecord build() {
    final _$result = _$v ??
        new _$HistorialRecord._(
            fecha: fecha,
            idProducto: idProducto,
            idUsuario: idUsuario,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
