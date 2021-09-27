import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'historial_record.g.dart';

abstract class HistorialRecord
    implements Built<HistorialRecord, HistorialRecordBuilder> {
  static Serializer<HistorialRecord> get serializer =>
      _$historialRecordSerializer;

  @nullable
  Timestamp get fecha;

  @nullable
  @BuiltValueField(wireName: 'id_producto')
  DocumentReference get idProducto;

  @nullable
  @BuiltValueField(wireName: 'id_usuario')
  DocumentReference get idUsuario;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HistorialRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historial');

  static Stream<HistorialRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HistorialRecord._();
  factory HistorialRecord([void Function(HistorialRecordBuilder) updates]) =
      _$HistorialRecord;
}

Map<String, dynamic> createHistorialRecordData({
  Timestamp fecha,
  DocumentReference idProducto,
  DocumentReference idUsuario,
}) =>
    serializers.serializeWith(
        HistorialRecord.serializer,
        HistorialRecord((h) => h
          ..fecha = fecha
          ..idProducto = idProducto
          ..idUsuario = idUsuario));

HistorialRecord get dummyHistorialRecord {
  final builder = HistorialRecordBuilder()..fecha = dummyTimestamp;
  return builder.build();
}

List<HistorialRecord> createDummyHistorialRecord({int count}) =>
    List.generate(count, (_) => dummyHistorialRecord);
