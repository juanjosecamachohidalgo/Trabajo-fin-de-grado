// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto_en_lista_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductoEnListaRecord> _$productoEnListaRecordSerializer =
    new _$ProductoEnListaRecordSerializer();

class _$ProductoEnListaRecordSerializer
    implements StructuredSerializer<ProductoEnListaRecord> {
  @override
  final Iterable<Type> types = const [
    ProductoEnListaRecord,
    _$ProductoEnListaRecord
  ];
  @override
  final String wireName = 'ProductoEnListaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductoEnListaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.idLista;
    if (value != null) {
      result
        ..add('id_lista')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.idProducto;
    if (value != null) {
      result
        ..add('id_producto')
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
  ProductoEnListaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductoEnListaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id_lista':
          result.idLista = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'id_producto':
          result.idProducto = serializers.deserialize(value,
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

class _$ProductoEnListaRecord extends ProductoEnListaRecord {
  @override
  final int cantidad;
  @override
  final DocumentReference idLista;
  @override
  final DocumentReference idProducto;
  @override
  final DocumentReference reference;

  factory _$ProductoEnListaRecord(
          [void Function(ProductoEnListaRecordBuilder) updates]) =>
      (new ProductoEnListaRecordBuilder()..update(updates)).build();

  _$ProductoEnListaRecord._(
      {this.cantidad, this.idLista, this.idProducto, this.reference})
      : super._();

  @override
  ProductoEnListaRecord rebuild(
          void Function(ProductoEnListaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductoEnListaRecordBuilder toBuilder() =>
      new ProductoEnListaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductoEnListaRecord &&
        cantidad == other.cantidad &&
        idLista == other.idLista &&
        idProducto == other.idProducto &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, cantidad.hashCode), idLista.hashCode),
            idProducto.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductoEnListaRecord')
          ..add('cantidad', cantidad)
          ..add('idLista', idLista)
          ..add('idProducto', idProducto)
          ..add('reference', reference))
        .toString();
  }
}

class ProductoEnListaRecordBuilder
    implements Builder<ProductoEnListaRecord, ProductoEnListaRecordBuilder> {
  _$ProductoEnListaRecord _$v;

  int _cantidad;
  int get cantidad => _$this._cantidad;
  set cantidad(int cantidad) => _$this._cantidad = cantidad;

  DocumentReference _idLista;
  DocumentReference get idLista => _$this._idLista;
  set idLista(DocumentReference idLista) => _$this._idLista = idLista;

  DocumentReference _idProducto;
  DocumentReference get idProducto => _$this._idProducto;
  set idProducto(DocumentReference idProducto) =>
      _$this._idProducto = idProducto;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  ProductoEnListaRecordBuilder() {
    ProductoEnListaRecord._initializeBuilder(this);
  }

  ProductoEnListaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cantidad = $v.cantidad;
      _idLista = $v.idLista;
      _idProducto = $v.idProducto;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductoEnListaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductoEnListaRecord;
  }

  @override
  void update(void Function(ProductoEnListaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductoEnListaRecord build() {
    final _$result = _$v ??
        new _$ProductoEnListaRecord._(
            cantidad: cantidad,
            idLista: idLista,
            idProducto: idProducto,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
