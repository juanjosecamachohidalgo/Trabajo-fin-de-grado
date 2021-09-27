import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../easy/easy_util.dart';

import 'schema/usuario_record.dart';
import 'schema/lista_record.dart';
import 'schema/usuarios_en_lista_record.dart';
import 'schema/historial_record.dart';
import 'schema/producto_record.dart';
import 'schema/producto_en_lista_record.dart';
import 'schema/categoria_producto_record.dart';
import 'schema/categoria_usuarios_record.dart';
import 'schema/config_user_record.dart';
import 'schema/serializers.dart';

export 'schema/usuario_record.dart';
export 'schema/lista_record.dart';
export 'schema/usuarios_en_lista_record.dart';
export 'schema/historial_record.dart';
export 'schema/producto_record.dart';
export 'schema/producto_en_lista_record.dart';
export 'schema/categoria_producto_record.dart';
export 'schema/categoria_usuarios_record.dart';
export 'schema/config_user_record.dart';

Stream<List<UsuarioRecord>> queryUsuarioRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UsuarioRecord.collection, UsuarioRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<ListaRecord>> queryListaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ListaRecord.collection, ListaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<UsuariosEnListaRecord>> queryUsuariosEnListaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        UsuariosEnListaRecord.collection, UsuariosEnListaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<HistorialRecord>> queryHistorialRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(HistorialRecord.collection, HistorialRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<ProductoRecord>> queryProductoRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ProductoRecord.collection, ProductoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<ProductoEnListaRecord>> queryProductoEnListaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        ProductoEnListaRecord.collection, ProductoEnListaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<CategoriaProductoRecord>> queryCategoriaProductoRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        CategoriaProductoRecord.collection, CategoriaProductoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<CategoriaUsuariosRecord>> queryCategoriaUsuariosRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        CategoriaUsuariosRecord.collection, CategoriaUsuariosRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<ConfigUserRecord>> queryConfigUserRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ConfigUserRecord.collection, ConfigUserRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<T>> queryCollection<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map((d) => serializers.deserializeWith(serializer, serializedData(d)))
      .toList());
}

// Creates a Firestore record representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsuarioRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsuarioRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
