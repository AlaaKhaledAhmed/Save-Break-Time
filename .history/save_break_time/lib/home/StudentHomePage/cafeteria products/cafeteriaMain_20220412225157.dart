import 'package:flutter/material.dart';

import '../../../Models/Methods.dart';
import '../../../Models/virables.dart';

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
        children:[
        text(context, 'Available Products', 20, deepWhite,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: 15.h,
                ),
        ]
      )
    
    );
  }
}
