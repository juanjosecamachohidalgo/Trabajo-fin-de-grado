import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../carga/carga_widget.dart';
import '../categorias/categorias_widget.dart';
import '../compartir_lista/compartir_lista_widget.dart';
import '../crear_lista/crear_lista_widget.dart';
import '../emergencias/emergencias_widget.dart';
import '../easy/easytheme.dart';
import '../easy/easy_widgets.dart';
import '../historial_listas/historial_listas_widget.dart';
import '../iniciar_sesion/iniciar_sesion_widget.dart';
import '../principal/principal_widget.dart';
import '../ver_lista/ver_lista_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MisListasWidget extends StatefulWidget {
  MisListasWidget({Key key}) : super(key: key);

  @override
  _MisListasWidgetState createState() => _MisListasWidgetState();
}

class _MisListasWidgetState extends State<MisListasWidget> {
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        elevation: 16,
        child: StreamBuilder<UsuarioRecord>(
          stream: UsuarioRecord.getDocument(currentUserReference),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            final columnUsuarioRecord = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Color(0xFF115C61),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Color(0xFF115C61),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                columnUsuarioRecord.displayName,
                                textAlign: TextAlign.start,
                                style: Easytheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: columnUsuarioRecord.photoUrl,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'VER PERFIL',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Color(0xFF0D928A),
                                    textStyle:
                                        Easytheme.subtitle2.override(
                                      fontFamily: 'Quicksand',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  StreamBuilder<List<ConfigUserRecord>>(
                    stream: queryConfigUserRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      List<ConfigUserRecord> containerConfigUserRecordList =
                          snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        // return Container();
                        // For now, we'll just include some dummy data.
                        containerConfigUserRecordList =
                            createDummyConfigUserRecord(count: 1);
                      }
                      final containerConfigUserRecord =
                          containerConfigUserRecordList.first;
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xA4A8A8A8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.mic,
                                color: Colors.black,
                                size: 45,
                              ),
                              Expanded(
                                child: SwitchListTile(
                                  value: switchListTileValue ?? true,
                                  onChanged: (newValue) => setState(
                                      () => switchListTileValue = newValue),
                                  title: Text(
                                    'Asistencia por voz',
                                    style: Easytheme.title3.override(
                                      fontFamily: 'Lato',
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  tileColor: Color(0x00A8A8A8),
                                  dense: true,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xA4A8A8A8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.lightbulb_outline,
                              color: Colors.black,
                              size: 45,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Ayuda visual',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Colors.black,
                                  textStyle:
                                      Easytheme.subtitle2.override(
                                    fontFamily: 'Quicksand',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xA4A8A8A8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black,
                              size: 45,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                'Escanear producto',
                                style: Easytheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xA4A8A8A8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.black,
                              size: 45,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                'Preguntas frecuentes',
                                style: Easytheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xA4A8A8A8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 45,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                'Ajustes',
                                style: Easytheme.bodyText1.override(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await signOut();
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IniciarSesionWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'CERRAR SESIÓN',
                          options: FFButtonOptions(
                            width: 170,
                            height: 40,
                            color: Color(0xB5040101),
                            textStyle: Easytheme.subtitle2.override(
                              fontFamily: 'Quicksand',
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Color(0xFF115C61),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'EasyDay © 2021. Todos los derechos reservados.',
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFF5F5F5),
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: Image.asset(
              'assets/images/white-concrete-wall.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      color: Color(0xAEA4470B),
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: Color(0x00025C86),
                        width: 0,
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 35, 0, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          scaffoldKey.currentState
                                              .openEndDrawer();
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.11,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.11,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.lightbulb_outline,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0x00EEEEEE),
                                        ),
                                        child: Align(
                                          alignment: Alignment(0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      CargaWidget(),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/APPED.png',
                                                fit: BoxFit.fitHeight,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          scaffoldKey.currentState
                                              .openEndDrawer();
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.11,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.11,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.menu,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.035,
                  decoration: BoxDecoration(
                    color: Color(0xBF000000),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MIS LISTAS',
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.73,
                  decoration: BoxDecoration(
                    color: Color(0xFFEAEAEA),
                  ),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.73,
                                child: DefaultTabController(
                                  length: 4,
                                  initialIndex: 0,
                                  child: Column(
                                    children: [
                                      TabBar(
                                        isScrollable: true,
                                        labelColor: Colors.black,
                                        unselectedLabelColor: Colors.black,
                                        indicatorColor:
                                            Easytheme.secondaryColor,
                                        tabs: [
                                          Tab(
                                            text: 'Todas',
                                          ),
                                          StreamBuilder<
                                              List<CategoriaUsuariosRecord>>(
                                            stream:
                                                queryCategoriaUsuariosRecord(
                                              queryBuilder: (categoriaUsuariosRecord) =>
                                                  categoriaUsuariosRecord.where(
                                                      'id_usuario',
                                                      isEqualTo:
                                                          currentUserReference),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                    child:
                                                        CircularProgressIndicator());
                                              }
                                              List<CategoriaUsuariosRecord>
                                                  tabCategoriaUsuariosRecordList =
                                                  snapshot.data;
                                              // Customize what your widget looks like with no query results.
                                              if (snapshot.data.isEmpty) {
                                                // return Container();
                                                // For now, we'll just include some dummy data.
                                                tabCategoriaUsuariosRecordList =
                                                    createDummyCategoriaUsuariosRecord(
                                                        count: 1);
                                              }
                                              final tabCategoriaUsuariosRecord =
                                                  tabCategoriaUsuariosRecordList
                                                      .first;
                                              return Tab(
                                                text: tabCategoriaUsuariosRecord
                                                    .nombreCategoria,
                                              );
                                            },
                                          ),
                                          StreamBuilder<
                                              List<CategoriaUsuariosRecord>>(
                                            stream:
                                                queryCategoriaUsuariosRecord(
                                              queryBuilder: (categoriaUsuariosRecord) =>
                                                  categoriaUsuariosRecord.where(
                                                      'id_usuario',
                                                      isEqualTo:
                                                          currentUserReference),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                    child:
                                                        CircularProgressIndicator());
                                              }
                                              List<CategoriaUsuariosRecord>
                                                  tabCategoriaUsuariosRecordList =
                                                  snapshot.data;
                                              // Customize what your widget looks like with no query results.
                                              if (snapshot.data.isEmpty) {
                                                // return Container();
                                                // For now, we'll just include some dummy data.
                                                tabCategoriaUsuariosRecordList =
                                                    createDummyCategoriaUsuariosRecord(
                                                        count: 1);
                                              }
                                              final tabCategoriaUsuariosRecord =
                                                  tabCategoriaUsuariosRecordList
                                                      .first;
                                              return Tab(
                                                text: 'Categoría2',
                                              );
                                            },
                                          ),
                                          Tab(
                                            text: 'Categoría3',
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          children: [
                                            StreamBuilder<
                                                List<UsuariosEnListaRecord>>(
                                              stream:
                                                  queryUsuariosEnListaRecord(
                                                queryBuilder: (usuariosEnListaRecord) =>
                                                    usuariosEnListaRecord.where(
                                                        'id_usuario',
                                                        isEqualTo:
                                                            currentUserReference),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                      child:
                                                          CircularProgressIndicator());
                                                }
                                                List<UsuariosEnListaRecord>
                                                    columnUsuariosEnListaRecordList =
                                                    snapshot.data;
                                                // Customize what your widget looks like with no query results.
                                                if (snapshot.data.isEmpty) {
                                                  // return Container();
                                                  // For now, we'll just include some dummy data.
                                                  columnUsuariosEnListaRecordList =
                                                      createDummyUsuariosEnListaRecord(
                                                          count: 4);
                                                }
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        columnUsuariosEnListaRecordList
                                                            .length,
                                                        (columnIndex) {
                                                      final columnUsuariosEnListaRecord =
                                                          columnUsuariosEnListaRecordList[
                                                              columnIndex];
                                                      return StreamBuilder<
                                                          List<ListaRecord>>(
                                                        stream:
                                                            queryListaRecord(
                                                          queryBuilder: (listaRecord) =>
                                                              listaRecord.where(
                                                                  'usuarios_en_lista',
                                                                  isEqualTo:
                                                                      columnUsuariosEnListaRecord
                                                                          .reference),
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                                child:
                                                                    CircularProgressIndicator());
                                                          }
                                                          List<ListaRecord>
                                                              cardListaRecordList =
                                                              snapshot.data;
                                                          // Customize what your widget looks like with no query results.
                                                          if (snapshot
                                                              .data.isEmpty) {
                                                            // return Container();
                                                            // For now, we'll just include some dummy data.
                                                            cardListaRecordList =
                                                                createDummyListaRecord(
                                                                    count: 1);
                                                          }
                                                          final cardListaRecord =
                                                              cardListaRecordList
                                                                  .first;
                                                          return Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: Colors.white,
                                                            elevation: 2,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.17,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEEEEEE),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.88,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        1,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFEEEEEE),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Align(
                                                                          alignment: Alignment(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/12-123125_dark-blue-hd-wallpapers-data-src-dark-blue.jpg',
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                MediaQuery.of(context).size.height * 1,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: Alignment(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                5,
                                                                                0,
                                                                                5),
                                                                            child:
                                                                                ListView(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.vertical,
                                                                              children: [
                                                                                StreamBuilder<List<UsuariosEnListaRecord>>(
                                                                                  stream: queryUsuariosEnListaRecord(
                                                                                    queryBuilder: (usuariosEnListaRecord) => usuariosEnListaRecord.where('id_lista', isEqualTo: cardListaRecord.reference),
                                                                                  ),
                                                                                  builder: (context, snapshot) {
                                                                                    // Customize what your widget looks like when it's loading.
                                                                                    if (!snapshot.hasData) {
                                                                                      return Center(child: CircularProgressIndicator());
                                                                                    }
                                                                                    List<UsuariosEnListaRecord> rowUsuariosEnListaRecordList = snapshot.data;
                                                                                    // Customize what your widget looks like with no query results.
                                                                                    if (snapshot.data.isEmpty) {
                                                                                      // return Container();
                                                                                      // For now, we'll just include some dummy data.
                                                                                      rowUsuariosEnListaRecordList = createDummyUsuariosEnListaRecord(count: 4);
                                                                                    }
                                                                                    return Padding(
                                                                                      padding: EdgeInsets.fromLTRB(30, 10, 65, 0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(rowUsuariosEnListaRecordList.length, (rowIndex) {
                                                                                          final rowUsuariosEnListaRecord = rowUsuariosEnListaRecordList[rowIndex];
                                                                                          return Padding(
                                                                                            padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                                                                            child: Container(
                                                                                              width: MediaQuery.of(context).size.width * 0.1,
                                                                                              height: MediaQuery.of(context).size.width * 0.1,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              decoration: BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Image.network(
                                                                                                'https://picsum.photos/seed/777/600',
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: MediaQuery.of(context).size.width * 0.8,
                                                                                        height: MediaQuery.of(context).size.height * 0.05,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0x69000000),
                                                                                          borderRadius: BorderRadius.circular(50),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: Alignment(-1, 0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                                                            child: Text(
                                                                                              cardListaRecord.titulo,
                                                                                              style: Easytheme.bodyText1.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: Colors.white,
                                                                                                fontSize: 30,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                                                        child: Text(
                                                                                          cardListaRecord.numeroProductos.toString(),
                                                                                          style: Easytheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Colors.white,
                                                                                          ),
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: Alignment(
                                                                              0.9,
                                                                              -0.85),
                                                                          child:
                                                                              IconButton(
                                                                            onPressed:
                                                                                () async {
                                                                              await Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => CompartirListaWidget(),
                                                                                ),
                                                                              );
                                                                            },
                                                                            icon:
                                                                                Icon(
                                                                              Icons.share,
                                                                              color: Color(0xFFC5C3C3),
                                                                              size: 30,
                                                                            ),
                                                                            iconSize:
                                                                                30,
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.1,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        1,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFF3D3A3A),
                                                                    ),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      color: Color(
                                                                          0xCEF28741),
                                                                      size: 24,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }),
                                                  ),
                                                );
                                              },
                                            ),
                                            StreamBuilder<
                                                List<CategoriaUsuariosRecord>>(
                                              stream:
                                                  queryCategoriaUsuariosRecord(
                                                queryBuilder:
                                                    (categoriaUsuariosRecord) =>
                                                        categoriaUsuariosRecord
                                                            .where('id_usuario',
                                                                isEqualTo:
                                                                    currentUserReference),
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                      child:
                                                          CircularProgressIndicator());
                                                }
                                                List<CategoriaUsuariosRecord>
                                                    tabViewCategoriaUsuariosRecordList =
                                                    snapshot.data;
                                                // Customize what your widget looks like with no query results.
                                                if (snapshot.data.isEmpty) {
                                                  // return Container();
                                                  // For now, we'll just include some dummy data.
                                                  tabViewCategoriaUsuariosRecordList =
                                                      createDummyCategoriaUsuariosRecord(
                                                          count: 1);
                                                }
                                                final tabViewCategoriaUsuariosRecord =
                                                    tabViewCategoriaUsuariosRecordList
                                                        .first;
                                                return StreamBuilder<
                                                    List<
                                                        UsuariosEnListaRecord>>(
                                                  stream:
                                                      queryUsuariosEnListaRecord(
                                                    queryBuilder: (usuariosEnListaRecord) =>
                                                        usuariosEnListaRecord
                                                            .where('id_usuario',
                                                                isEqualTo:
                                                                    currentUserReference)
                                                            .where('categoria',
                                                                isEqualTo:
                                                                    tabViewCategoriaUsuariosRecord
                                                                        .nombreCategoria),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                          child:
                                                              CircularProgressIndicator());
                                                    }
                                                    List<UsuariosEnListaRecord>
                                                        columnUsuariosEnListaRecordList =
                                                        snapshot.data;
                                                    // Customize what your widget looks like with no query results.
                                                    if (snapshot.data.isEmpty) {
                                                      // return Container();
                                                      // For now, we'll just include some dummy data.
                                                      columnUsuariosEnListaRecordList =
                                                          createDummyUsuariosEnListaRecord(
                                                              count: 4);
                                                    }
                                                    return SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            columnUsuariosEnListaRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnUsuariosEnListaRecord =
                                                              columnUsuariosEnListaRecordList[
                                                                  columnIndex];
                                                          return Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: Colors.white,
                                                            elevation: 2,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.17,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEEEEEE),
                                                              ),
                                                              child: StreamBuilder<
                                                                  ListaRecord>(
                                                                stream: ListaRecord
                                                                    .getDocument(
                                                                        columnUsuariosEnListaRecord
                                                                            .idLista),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                        child:
                                                                            CircularProgressIndicator());
                                                                  }
                                                                  final stackListaRecord =
                                                                      snapshot
                                                                          .data;
                                                                  return Stack(
                                                                    children: [
                                                                      CachedNetworkImage(
                                                                        imageUrl:
                                                                            stackListaRecord.fondo,
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        height:
                                                                            MediaQuery.of(context).size.height *
                                                                                1,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.7,
                                                                            height:
                                                                                MediaQuery.of(context).size.height * 1,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Colors.transparent,
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: Alignment(-0.5, -0.5),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                                                                      child: Text(
                                                                                        stackListaRecord.titulo,
                                                                                        style: Easytheme.subtitle2.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          color: Colors.white,
                                                                                          fontSize: 25,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: Alignment(-0.65, -0.5),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.fromLTRB(3, 6, 0, 0),
                                                                                      child: Text(
                                                                                        '6 productos',
                                                                                        style: Easytheme.subtitle2.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          color: Color(0xFFDADDDD),
                                                                                          fontSize: 14,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      StreamBuilder<UsuarioRecord>(
                                                                                        stream: UsuarioRecord.getDocument(columnUsuariosEnListaRecord.idUsuario),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(child: CircularProgressIndicator());
                                                                                          }
                                                                                          final rowUsuarioRecord = snapshot.data;
                                                                                          return Padding(
                                                                                            padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                                                                                            child: SingleChildScrollView(
                                                                                              scrollDirection: Axis.horizontal,
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 0.1,
                                                                                                      height: MediaQuery.of(context).size.width * 0.1,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: CachedNetworkImage(
                                                                                                        imageUrl: rowUsuarioRecord.photoUrl,
                                                                                                      ),
                                                                                                    ),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                      IconButton(
                                                                                        onPressed: () {
                                                                                          print('IconButton pressed ...');
                                                                                        },
                                                                                        icon: Icon(
                                                                                          Icons.add_circle,
                                                                                          color: Colors.white,
                                                                                          size: 30,
                                                                                        ),
                                                                                        iconSize: 30,
                                                                                      )
                                                                                    ],
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.25,
                                                                            height:
                                                                                MediaQuery.of(context).size.height * 1,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00FFFFFF),
                                                                            ),
                                                                            child:
                                                                                StreamBuilder<UsuarioRecord>(
                                                                              stream: UsuarioRecord.getDocument(stackListaRecord.creador),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(child: CircularProgressIndicator());
                                                                                }
                                                                                final rowUsuarioRecord = snapshot.data;
                                                                                return Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: Alignment(1, 0),
                                                                                      child: Container(
                                                                                        width: 50,
                                                                                        height: 50,
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        decoration: BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Image.network(
                                                                                          rowUsuarioRecord.photoUrl,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    InkWell(
                                                                                      onTap: () async {
                                                                                        await Navigator.push(
                                                                                          context,
                                                                                          MaterialPageRoute(
                                                                                            builder: (context) => VerListaWidget(),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.arrow_forward_ios_outlined,
                                                                                        color: Colors.white,
                                                                                        size: 24,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                );
                                                                              },
                                                                            ),
                                                                          )
                                                                        ],
                                                                      )
                                                                    ],
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            Text(
                                              'Tab View 3',
                                              style: Easytheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 32,
                                              ),
                                            ),
                                            Text(
                                              'Tab View 4',
                                              style: Easytheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 32,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment(1, 1),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: 60,
                              height: 60,
                              color: Color(0xFFFCA164),
                              textStyle: Easytheme.subtitle2.override(
                                fontFamily: 'Quicksand',
                                color: Color(0xCE000000),
                                fontSize: 50,
                                fontWeight: FontWeight.normal,
                              ),
                              elevation: 2,
                              borderSide: BorderSide(
                                color: Color(0xEDC1BEBE),
                                width: 2,
                              ),
                              borderRadius: 50,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(1, 1),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CrearListaWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CrearListaWidget(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xDE000000),
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Color(0xFFBFBFBF),
                      width: 0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrincipalWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.175,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PrincipalWidget(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.home,
                              color: Colors.black,
                              size: 38,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.175,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Color(0xFFDFDEDE),
                          border: Border.all(
                            color: Colors.white,
                            width: 0,
                          ),
                        ),
                        child: Icon(
                          Icons.list,
                          color: Color(0xCEF28741),
                          size: 38,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.22,
                                height:
                                    MediaQuery.of(context).size.width * 0.22,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EmergenciasWidget(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                  decoration: BoxDecoration(
                                    color: Color(0xDBA12525),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: Alignment(0, 0),
                                    child: Text(
                                      'SOS',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoriasWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.175,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0x00FFFFFF),
                              width: 0,
                            ),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriasWidget(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.category,
                              color: Colors.black,
                              size: 38,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HistorialListasWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.175,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HistorialListasWidget(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.history,
                              color: Colors.black,
                              size: 38,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
