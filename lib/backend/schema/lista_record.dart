import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'lista_record.g.dart';

abstract class ListaRecord implements Built<ListaRecord, ListaRecordBuilder> {
  static Serializer<ListaRecord> get serializer => _$listaRecordSerializer;

  @nullable
  DocumentReference get creador;

  @nullable
  String get fondo;

  @nullable
  String get titulo;

  @nullable
  @BuiltValueField(wireName: 'usuarios_en_lista')
  DocumentReference get usuariosEnLista;

  @nullable
  @BuiltValueField(wireName: 'numero_productos')
  int get numeroProductos;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ListaRecordBuilder builder) => builder
    ..fondo = ''
    ..titulo = ''
    ..numeroProductos = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lista');

  static Stream<ListaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ListaRecord._();
  factory ListaRecord([void Function(ListaRecordBuilder) updates]) =
      _$ListaRecord;
}

Map<String, dynamic> createListaRecordData({
  DocumentReference creador,
  String fondo,
  String titulo,
  DocumentReference usuariosEnLista,
  int numeroProductos,
}) =>
    serializers.serializeWith(
        ListaRecord.serializer,
        ListaRecord((l) => l
          ..creador = creador
          ..fondo = fondo
          ..titulo = titulo
          ..usuariosEnLista = usuariosEnLista
          ..numeroProductos = numeroProductos));

ListaRecord get dummyListaRecord {
  final builder = ListaRecordBuilder()
    ..fondo = dummyImagePath
    ..titulo = dummyString
    ..numeroProductos = dummyInteger;
  return builder.build();
}

List<ListaRecord> createDummyListaRecord({int count}) =>
    List.generate(count, (_) => dummyListaRecord);
