import 'package:flutter/material.dart';

class CafeteriaMain extends StatefulWidget {
  CafeteriaMain({Key key}) : super(key: key);

  @override
  State<CafeteriaMain> createState() => _CafeteriaMainState();
}

class _CafeteriaMainState extends State<CafeteriaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("cafirera")));
  }
}
