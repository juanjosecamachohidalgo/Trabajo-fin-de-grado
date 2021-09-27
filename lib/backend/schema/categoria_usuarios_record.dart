import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'categoria_usuarios_record.g.dart';

abstract class CategoriaUsuariosRecord
    implements Built<CategoriaUsuariosRecord, CategoriaUsuariosRecordBuilder> {
  static Serializer<CategoriaUsuariosRecord> get serializer =>
      _$categoriaUsuariosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'id_usuario')
  DocumentReference get idUsuario;

  @nullable
  @BuiltValueField(wireName: 'nombre_categoria')
  String get nombreCategoria;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CategoriaUsuariosRecordBuilder builder) =>
      builder..nombreCategoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoria_usuarios');

  static Stream<CategoriaUsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CategoriaUsuariosRecord._();
  factory CategoriaUsuariosRecord(
          [void Function(CategoriaUsuariosRecordBuilder) updates]) =
      _$CategoriaUsuariosRecord;
}

Map<String, dynamic> createCategoriaUsuariosRecordData({
  DocumentReference idUsuario,
  String nombreCategoria,
}) =>
    serializers.serializeWith(
        CategoriaUsuariosRecord.serializer,
        CategoriaUsuariosRecord((c) => c
          ..idUsuario = idUsuario
          ..nombreCategoria = nombreCategoria));

CategoriaUsuariosRecord get dummyCategoriaUsuariosRecord {
  final builder = CategoriaUsuariosRecordBuilder()
    ..nombreCategoria = dummyString;
  return builder.build();
}

List<CategoriaUsuariosRecord> createDummyCategoriaUsuariosRecord({int count}) =>
    List.generate(count, (_) => dummyCategoriaUsuariosRecord);
