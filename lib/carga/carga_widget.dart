import '../easy/easytheme.dart';
import '../iniciar_sesion/iniciar_sesion_widget.dart';
import '../principal/principal_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CargaWidget extends StatefulWidget {
  CargaWidget({Key key}) : super(key: key);

  @override
  _CargaWidgetState createState() => _CargaWidgetState();
}

class _CargaWidgetState extends State<CargaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: InkWell(
        onTap: () async {
          await Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => IniciarSesionWidget(),
            ),
            (r) => false,
          );
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, 0),
                child: Image.asset(
                  'assets/images/vertical-shot-modern-bedroom-interior-design-blue-tones.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.95,
                        decoration: BoxDecoration(
                          color: Color(0x46444D59),
                        ),
                        child: Align(
                          alignment: Alignment(0, -1),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    child: Container(
                                      width: 300,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF2A2A2A),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(0, 0.1),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        IniciarSesionWidget(),
                                                  ),
                                                );
                                              },
                                              child: Image.asset(
                                                'assets/images/logoFondo.png',
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.35,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0, 0.75),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 15, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PrincipalWidget(),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x02000000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: Color(0x4AF8F8F8),
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .hourglass_bottom_rounded,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
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
                    ),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x69362B1A),
                          borderRadius: BorderRadius.circular(0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0x00FFFFFF),
                          ),
                        ),
                        child: Text(
                          'EasyDay © 2021. Todos los derechos reservados.',
                          textAlign: TextAlign.center,
                          style: Easytheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
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
    );
  }
}
