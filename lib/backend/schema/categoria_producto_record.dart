import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'categoria_producto_record.g.dart';

abstract class CategoriaProductoRecord
    implements Built<CategoriaProductoRecord, CategoriaProductoRecordBuilder> {
  static Serializer<CategoriaProductoRecord> get serializer =>
      _$categoriaProductoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'nombre_categoria')
  String get nombreCategoria;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CategoriaProductoRecordBuilder builder) =>
      builder..nombreCategoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoria_producto');

  static Stream<CategoriaProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CategoriaProductoRecord._();
  factory CategoriaProductoRecord(
          [void Function(CategoriaProductoRecordBuilder) updates]) =
      _$CategoriaProductoRecord;
}

Map<String, dynamic> createCategoriaProductoRecordData({
  String nombreCategoria,
}) =>
    serializers.serializeWith(CategoriaProductoRecord.serializer,
        CategoriaProductoRecord((c) => c..nombreCategoria = nombreCategoria));

CategoriaProductoRecord get dummyCategoriaProductoRecord {
  final builder = CategoriaProductoRecordBuilder()
    ..nombreCategoria = dummyString;
  return builder.build();
}

List<CategoriaProductoRecord> createDummyCategoriaProductoRecord({int count}) =>
    List.generate(count, (_) => dummyCategoriaProductoRecord);
