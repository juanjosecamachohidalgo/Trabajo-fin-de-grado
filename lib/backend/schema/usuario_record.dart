import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get telefono;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  Timestamp get createdTime;

  @nullable
  BuiltList<String> get categorias;

  @nullable
  DocumentReference get navegacionLista;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..email = ''
    ..telefono = ''
    ..displayName = ''
    ..photoUrl = ''
    ..categorias = ListBuilder()
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;
}

Map<String, dynamic> createUsuarioRecordData({
  String email,
  String telefono,
  String displayName,
  String photoUrl,
  Timestamp createdTime,
  DocumentReference navegacionLista,
  String uid,
}) =>
    serializers.serializeWith(
        UsuarioRecord.serializer,
        UsuarioRecord((u) => u
          ..email = email
          ..telefono = telefono
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..categorias = null
          ..navegacionLista = navegacionLista
          ..uid = uid));

UsuarioRecord get dummyUsuarioRecord {
  final builder = UsuarioRecordBuilder()
    ..email = dummyString
    ..telefono = dummyString
    ..displayName = dummyString
    ..photoUrl = dummyImagePath
    ..createdTime = dummyTimestamp
    ..categorias = ListBuilder([dummyString, dummyString])
    ..uid = dummyString;
  return builder.build();
}

List<UsuarioRecord> createDummyUsuarioRecord({int count}) =>
    List.generate(count, (_) => dummyUsuarioRecord);
