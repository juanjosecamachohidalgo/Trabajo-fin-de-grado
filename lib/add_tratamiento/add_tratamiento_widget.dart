import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTratamientoWidget extends StatefulWidget {
  AddTratamientoWidget({Key key}) : super(key: key);

  @override
  _AddTratamientoWidgetState createState() => _AddTratamientoWidgetState();
}

class _AddTratamientoWidgetState extends State<AddTratamientoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
