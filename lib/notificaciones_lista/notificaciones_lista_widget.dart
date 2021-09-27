import '../carga/carga_widget.dart';
import '../easy/easytheme.dart';
import '../easy/easy_widgets.dart';
import '../ver_lista/ver_lista_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificacionesListaWidget extends StatefulWidget {
  NotificacionesListaWidget({Key key}) : super(key: key);

  @override
  _NotificacionesListaWidgetState createState() =>
      _NotificacionesListaWidgetState();
}

class _NotificacionesListaWidgetState extends State<NotificacionesListaWidget> {
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        elevation: 16,
        child: SingleChildScrollView(
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
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: 'https://picsum.photos/seed/14/600',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'User#3452',
                              textAlign: TextAlign.start,
                              style: Easytheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'EDITAR PERFIL',
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
              ),
              Container(
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
                          onChanged: (newValue) =>
                              setState(() => switchListTileValue = newValue),
                          title: Text(
                            'Asistencia por voz',
                            style: Easytheme.title3.override(
                              fontFamily: 'Lato',
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          tileColor: Color(0x00A8A8A8),
                          dense: false,
                        ),
                      )
                    ],
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.049,
                decoration: BoxDecoration(
                  color: Color(0xFF115C61),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'EasyDay © 2021. Todos los derechos reservados.',
                    style: Easytheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFF5F5F5),
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
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
                            padding: EdgeInsets.fromLTRB(0, 40, 0, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.08,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                VerListaWidget(),
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.arrow_back_outlined,
                                        color: Colors.black,
                                        size: 35,
                                      ),
                                    ),
                                    Container(
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
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0x01000000),
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
                            'Enviar notificaciones a miembros',
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF020202),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '- LISTA_X -',
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF020202),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.57,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  title: Text(
                                    '¡A comprar!',
                                    style: Easytheme.title3.override(
                                      fontFamily: 'Lato',
                                      color: Colors.black,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Añade o cambia artículos',
                                    style: Easytheme.subtitle2.override(
                                      fontFamily: 'Quicksand',
                                      color: Color(0xFF373737),
                                    ),
                                  ),
                                  tileColor: Color(0xFFD9D8D8),
                                  dense: true,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.add_alert,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    title: Text(
                                      'Lista actualizada',
                                      style: Easytheme.title3.override(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Mira la lista',
                                      style:
                                          Easytheme.subtitle2.override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF373737),
                                      ),
                                    ),
                                    tileColor: Color(0xFFD9D8D8),
                                    dense: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.listAlt,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    title: Text(
                                      'Algo pendiente',
                                      style: Easytheme.title3.override(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Mira la lista',
                                      style:
                                          Easytheme.subtitle2.override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF373737),
                                      ),
                                    ),
                                    tileColor: Color(0xFFD9D8D8),
                                    dense: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.campaign_outlined,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    title: Text(
                                      '¡Urgente!',
                                      style: Easytheme.title3.override(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '¡Necesitamos <<producto>>!',
                                      style:
                                          Easytheme.subtitle2.override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF373737),
                                      ),
                                    ),
                                    tileColor: Color(0xFFD9D8D8),
                                    dense: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.shopping_basket_rounded,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    title: Text(
                                      'Compra realizada',
                                      style: Easytheme.title3.override(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Nada por comprar',
                                      style:
                                          Easytheme.subtitle2.override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF373737),
                                      ),
                                    ),
                                    tileColor: Color(0xFFD9D8D8),
                                    dense: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.user,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    title: Text(
                                      'Iré a comprar',
                                      style: Easytheme.title3.override(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Yo me encargo',
                                      style:
                                          Easytheme.subtitle2.override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF373737),
                                      ),
                                    ),
                                    tileColor: Color(0xFFD9D8D8),
                                    dense: true,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: CachedNetworkImage(
                          imageUrl: 'https://picsum.photos/seed/592/600',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          fit: BoxFit.cover,
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
