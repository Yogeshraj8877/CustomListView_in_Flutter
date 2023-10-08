
import 'package:flutter/material.dart';

import 'LoginForm.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: 'listview',
    routes: {
      'listview':(context) => MyCustomListView(dataList: [],)
    },
  ));
}


