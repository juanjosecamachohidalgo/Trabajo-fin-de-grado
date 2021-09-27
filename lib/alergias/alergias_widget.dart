import '../carga/carga_widget.dart';
import '../categorias/categorias_widget.dart';
import '../crear_lista/crear_lista_widget.dart';
import '../easy/easytheme.dart';
import '../easy/easy_widgets.dart';
import '../historial_listas/historial_listas_widget.dart';
import '../principal/principal_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AlergiasWidget extends StatefulWidget {
  AlergiasWidget({Key key}) : super(key: key);

  @override
  _AlergiasWidgetState createState() => _AlergiasWidgetState();
}

class _AlergiasWidgetState extends State<AlergiasWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
  bool switchListTileValue3;
  bool switchListTileValue4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                      color: Color(0xAE115EB8),
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: Color(0xFF025C86),
                        width: 0,
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
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
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.11,
                                        height:
                                            MediaQuery.of(context).size.width *
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
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      child: Container(
                                        width: 100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        decoration: BoxDecoration(
                                          color: Color(0x00EEEEEE),
                                        ),
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
                                            width: 50,
                                            height: 50,
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
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.11,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.11,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.menu,
                                          color: Colors.black,
                                          size: 30,
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
                    color: Color(0xBA000000),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ALERGIAS E INTOLERANCIAS',
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFDADADA),
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          child: DefaultTabController(
                            length: 5,
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
                                      text: 'Mis alergias',
                                    ),
                                    Tab(
                                      text: 'Genéricas',
                                      icon: Icon(
                                        Icons.person_outline_sharp,
                                        size: 30,
                                      ),
                                    ),
                                    Tab(
                                      text: 'Alimentos',
                                      icon: Icon(
                                        Icons.food_bank_outlined,
                                        size: 30,
                                      ),
                                    ),
                                    Tab(
                                      text: 'Medicamentos',
                                      icon: Icon(
                                        Icons.medical_services,
                                        size: 30,
                                      ),
                                    ),
                                    Tab(
                                      text: 'Animales',
                                      icon: Icon(
                                        Icons.biotech,
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFFF5F5F5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment: Alignment(0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 10, 0, 0),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/kisspng-egg-white-caesar-salad-chicken-scrambled-eggs-5ae914082af5c7.958275001525224456176-removebg-preview.png',
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SwitchListTile(
                                                    value:
                                                        switchListTileValue1 ??
                                                            true,
                                                    onChanged: (newValue) =>
                                                        setState(() =>
                                                            switchListTileValue1 =
                                                                newValue),
                                                    title: Text(
                                                      'Huevo',
                                                      style: Easytheme
                                                          .title3
                                                          .override(
                                                        fontFamily: 'Lato',
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      'Alergia',
                                                      style: Easytheme
                                                          .subtitle2
                                                          .override(
                                                        fontFamily: 'Quicksand',
                                                        color:
                                                            Color(0xFFFF7C7C),
                                                      ),
                                                    ),
                                                    tileColor:
                                                        Color(0xFFF5F5F5),
                                                    dense: false,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFFF5F5F5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment: Alignment(0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 10, 0, 0),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/png-clipart-cartoon-cartoon-sun-material-cartoon-character-food-removebg-preview.png',
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SwitchListTile(
                                                    value:
                                                        switchListTileValue2 ??
                                                            true,
                                                    onChanged: (newValue) =>
                                                        setState(() =>
                                                            switchListTileValue2 =
                                                                newValue),
                                                    title: Text(
                                                      'Sol',
                                                      style: Easytheme
                                                          .title3
                                                          .override(
                                                        fontFamily: 'Lato',
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      'Alergia',
                                                      style: Easytheme
                                                          .subtitle2
                                                          .override(
                                                        fontFamily: 'Quicksand',
                                                        color:
                                                            Color(0xFFFF7C7C),
                                                      ),
                                                    ),
                                                    tileColor:
                                                        Color(0xFFF5F5F5),
                                                    dense: false,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 80),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0xFFF5F5F5),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment(0, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 10, 0, 0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/kisspng-egg-white-caesar-salad-chicken-scrambled-eggs-5ae914082af5c7.958275001525224456176-removebg-preview.png',
                                                            fit: BoxFit
                                                                .fitHeight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: SwitchListTile(
                                                        value:
                                                            switchListTileValue3 ??
                                                                true,
                                                        onChanged: (newValue) =>
                                                            setState(() =>
                                                                switchListTileValue3 =
                                                                    newValue),
                                                        title: Text(
                                                          'Huevo',
                                                          style:
                                                              Easytheme
                                                                  .title3
                                                                  .override(
                                                            fontFamily: 'Lato',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        subtitle: Text(
                                                          'Alergia',
                                                          style:
                                                              Easytheme
                                                                  .subtitle2
                                                                  .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Color(
                                                                0xFFFF7C7C),
                                                          ),
                                                        ),
                                                        tileColor:
                                                            Color(0xFFF5F5F5),
                                                        dense: false,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0xFFF5F5F5),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment(0, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 10, 0, 0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/fructosa-1-removebg-preview.png',
                                                            fit: BoxFit
                                                                .fitHeight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: SwitchListTile(
                                                        value:
                                                            switchListTileValue4 ??
                                                                true,
                                                        onChanged: (newValue) =>
                                                            setState(() =>
                                                                switchListTileValue4 =
                                                                    newValue),
                                                        title: Text(
                                                          'Fructosa',
                                                          style:
                                                              Easytheme
                                                                  .title3
                                                                  .override(
                                                            fontFamily: 'Lato',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        subtitle: Text(
                                                          'Intolerancia',
                                                          style:
                                                              Easytheme
                                                                  .subtitle2
                                                                  .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Color(
                                                                0xFFFF7C7C),
                                                          ),
                                                        ),
                                                        tileColor:
                                                            Color(0xFFF5F5F5),
                                                        dense: false,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Tab View 4',
                                        style:
                                            Easytheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 32,
                                        ),
                                      ),
                                      Text(
                                        'Tab View 5',
                                        style:
                                            Easytheme.bodyText1.override(
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
                      ),
                      Align(
                        alignment: Alignment(1, 1),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Buscar alergia',
                            iconData: Icons.search,
                            options: FFButtonOptions(
                              width: 200,
                              height: 60,
                              color: Color(0xAE115EB8),
                              textStyle: Easytheme.subtitle2.override(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                              elevation: 2,
                              iconSize: 30,
                              iconColor: Colors.white,
                              borderSide: BorderSide(
                                color: Color(0x532CC1FF),
                                width: 0,
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
                          child: Icon(
                            Icons.home,
                            color: Colors.black,
                            size: 38,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.175,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 0,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: FaIcon(
                            FontAwesomeIcons.bookMedical,
                            color: Colors.black,
                            size: 38,
                          ),
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
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Color(0xDBA12525),
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: Alignment(0, 0),
                                  child: Text(
                                    'SOS',
                                    style: Easytheme.bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
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
                            color: Color(0xFFDFDEDE),
                            border: Border.all(
                              color: Color(0x00FFFFFF),
                              width: 0,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0),
                            child: FaIcon(
                              FontAwesomeIcons.allergies,
                              color: Color(0xAE115EB8),
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
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 45,
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
