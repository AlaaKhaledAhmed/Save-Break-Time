import 'package:flutter/material.dart';

import '../../../Models/Methods.dart';

class CafeteriaMain extends StatefulWidget {
  CafeteriaMain({Key key}) : super(key: key);

  @override
  State<CafeteriaMain> createState() => _CafeteriaMainState();
}

class _CafeteriaMainState extends State<CafeteriaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drowAppBar("cafeteria products", context),
      body:Column(
        
      )
    
    );
  }
}
