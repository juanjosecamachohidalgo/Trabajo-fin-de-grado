import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'usuarios_en_lista_record.g.dart';

abstract class UsuariosEnListaRecord
    implements Built<UsuariosEnListaRecord, UsuariosEnListaRecordBuilder> {
  static Serializer<UsuariosEnListaRecord> get serializer =>
      _$usuariosEnListaRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'id_lista')
  DocumentReference get idLista;

  @nullable
  @BuiltValueField(wireName: 'id_usuario')
  DocumentReference get idUsuario;

  @nullable
  String get categoria;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuariosEnListaRecordBuilder builder) =>
      builder..categoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios_en_lista');

  static Stream<UsuariosEnListaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuariosEnListaRecord._();
  factory UsuariosEnListaRecord(
          [void Function(UsuariosEnListaRecordBuilder) updates]) =
      _$UsuariosEnListaRecord;
}

Map<String, dynamic> createUsuariosEnListaRecordData({
  DocumentReference idLista,
  DocumentReference idUsuario,
  String categoria,
}) =>
    serializers.serializeWith(
        UsuariosEnListaRecord.serializer,
        UsuariosEnListaRecord((u) => u
          ..idLista = idLista
          ..idUsuario = idUsuario
          ..categoria = categoria));

UsuariosEnListaRecord get dummyUsuariosEnListaRecord {
  final builder = UsuariosEnListaRecordBuilder()..categoria = dummyString;
  return builder.build();
}

List<UsuariosEnListaRecord> createDummyUsuariosEnListaRecord({int count}) =>
    List.generate(count, (_) => dummyUsuariosEnListaRecord);
