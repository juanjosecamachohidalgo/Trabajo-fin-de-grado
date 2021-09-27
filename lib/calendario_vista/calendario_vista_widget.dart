import '../carga/carga_widget.dart';
import '../categorias/categorias_widget.dart';
import '../easy/easytheme.dart';
import '../principal/principal_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarioVistaWidget extends StatefulWidget {
  CalendarioVistaWidget({Key key}) : super(key: key);

  @override
  _CalendarioVistaWidgetState createState() => _CalendarioVistaWidgetState();
}

class _CalendarioVistaWidgetState extends State<CalendarioVistaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                      color: Color(0xFF115C61),
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
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
                  height: MediaQuery.of(context).size.height * 0.04,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              'Calendario',
                              style: Easytheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFDADADA),
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_left_outlined,
                              color: Colors.black,
                              size: 50,
                            ),
                            Text(
                              'Abril 2021',
                              style: Easytheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              color: Colors.black,
                              size: 50,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'L',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'M',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'X',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'J',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'V',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'S',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'D',
                            textAlign: TextAlign.center,
                            style: Easytheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.62,
                    decoration: BoxDecoration(
                      color: Color(0xE3ECECEC),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.6,
                        ),
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '29',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '30',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '31',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '1',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '3',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '5',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '6',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '7',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '8',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '9',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '10',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '11',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '12',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '13',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '14',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '15',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '16',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '17',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '18',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '19',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '20',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '21',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '22',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '23',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '24',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '25',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '26',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '27',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '28',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '29',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '30',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '1',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDBDB),
                              border: Border.all(
                                color: Color(0x5C3F3F3F),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2',
                                      style:
                                          Easytheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA8787),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                )
                              ],
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
          Align(
            alignment: Alignment(0.8, 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
                border: Border.all(
                  color: Color(0x00BFBFBF),
                  width: 0,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
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
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
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
                                textAlign: TextAlign.center,
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
                      width: MediaQuery.of(context).size.width * 0.12,
                      height: MediaQuery.of(context).size.width * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xFFCACACA),
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0x00FFFFFF),
                          width: 0,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment(0, 0),
                        child: FaIcon(
                          FontAwesomeIcons.calendarAlt,
                          color: Color(0xFF0A0A0A),
                          size: 35,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
