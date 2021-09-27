import '../easy/easytheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrearRecetaWidget extends StatefulWidget {
  CrearRecetaWidget({Key key}) : super(key: key);

  @override
  _CrearRecetaWidgetState createState() => _CrearRecetaWidgetState();
}

class _CrearRecetaWidgetState extends State<CrearRecetaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
