import '../easy/easytheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProspectoWidget extends StatefulWidget {
  ProspectoWidget({Key key}) : super(key: key);

  @override
  _ProspectoWidgetState createState() => _ProspectoWidgetState();
}

class _ProspectoWidgetState extends State<ProspectoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
