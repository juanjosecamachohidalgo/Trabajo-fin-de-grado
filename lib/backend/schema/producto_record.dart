import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'producto_record.g.dart';

abstract class ProductoRecord
    implements Built<ProductoRecord, ProductoRecordBuilder> {
  static Serializer<ProductoRecord> get serializer =>
      _$productoRecordSerializer;

  @nullable
  DocumentReference get categoria;

  @nullable
  String get descripcion;

  @nullable
  @BuiltValueField(wireName: 'imagen_producto')
  String get imagenProducto;

  @nullable
  String get nombre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductoRecordBuilder builder) => builder
    ..descripcion = ''
    ..imagenProducto = ''
    ..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductoRecord._();
  factory ProductoRecord([void Function(ProductoRecordBuilder) updates]) =
      _$ProductoRecord;
}

Map<String, dynamic> createProductoRecordData({
  DocumentReference categoria,
  String descripcion,
  String imagenProducto,
  String nombre,
}) =>
    serializers.serializeWith(
        ProductoRecord.serializer,
        ProductoRecord((p) => p
          ..categoria = categoria
          ..descripcion = descripcion
          ..imagenProducto = imagenProducto
          ..nombre = nombre));

ProductoRecord get dummyProductoRecord {
  final builder = ProductoRecordBuilder()
    ..descripcion = dummyString
    ..imagenProducto = dummyImagePath
    ..nombre = dummyString;
  return builder.build();
}

List<ProductoRecord> createDummyProductoRecord({int count}) =>
    List.generate(count, (_) => dummyProductoRecord);
