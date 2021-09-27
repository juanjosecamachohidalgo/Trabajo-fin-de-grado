import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'config_user_record.g.dart';

abstract class ConfigUserRecord
    implements Built<ConfigUserRecord, ConfigUserRecordBuilder> {
  static Serializer<ConfigUserRecord> get serializer =>
      _$configUserRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'voz_enable')
  bool get vozEnable;

  @nullable
  @BuiltValueField(wireName: 'iterator_screen')
  String get iteratorScreen;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ConfigUserRecordBuilder builder) => builder
    ..vozEnable = false
    ..iteratorScreen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('config_user');

  static Stream<ConfigUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ConfigUserRecord._();
  factory ConfigUserRecord([void Function(ConfigUserRecordBuilder) updates]) =
      _$ConfigUserRecord;
}

Map<String, dynamic> createConfigUserRecordData({
  bool vozEnable,
  String iteratorScreen,
}) =>
    serializers.serializeWith(
        ConfigUserRecord.serializer,
        ConfigUserRecord((c) => c
          ..vozEnable = vozEnable
          ..iteratorScreen = iteratorScreen));

ConfigUserRecord get dummyConfigUserRecord {
  final builder = ConfigUserRecordBuilder()
    ..vozEnable = dummyBoolean
    ..iteratorScreen = dummyString;
  return builder.build();
}

List<ConfigUserRecord> createDummyConfigUserRecord({int count}) =>
    List.generate(count, (_) => dummyConfigUserRecord);
