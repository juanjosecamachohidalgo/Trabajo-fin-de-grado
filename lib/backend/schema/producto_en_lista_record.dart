import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'producto_en_lista_record.g.dart';

abstract class ProductoEnListaRecord
    implements Built<ProductoEnListaRecord, ProductoEnListaRecordBuilder> {
  static Serializer<ProductoEnListaRecord> get serializer =>
      _$productoEnListaRecordSerializer;

  @nullable
  int get cantidad;

  @nullable
  @BuiltValueField(wireName: 'id_lista')
  DocumentReference get idLista;

  @nullable
  @BuiltValueField(wireName: 'id_producto')
  DocumentReference get idProducto;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductoEnListaRecordBuilder builder) =>
      builder..cantidad = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('producto_en_lista');

  static Stream<ProductoEnListaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductoEnListaRecord._();
  factory ProductoEnListaRecord(
          [void Function(ProductoEnListaRecordBuilder) updates]) =
      _$ProductoEnListaRecord;
}

Map<String, dynamic> createProductoEnListaRecordData({
  int cantidad,
  DocumentReference idLista,
  DocumentReference idProducto,
}) =>
    serializers.serializeWith(
        ProductoEnListaRecord.serializer,
        ProductoEnListaRecord((p) => p
          ..cantidad = cantidad
          ..idLista = idLista
          ..idProducto = idProducto));

ProductoEnListaRecord get dummyProductoEnListaRecord {
  final builder = ProductoEnListaRecordBuilder()..cantidad = dummyInteger;
  return builder.build();
}

List<ProductoEnListaRecord> createDummyProductoEnListaRecord({int count}) =>
    List.generate(count, (_) => dummyProductoEnListaRecord);
