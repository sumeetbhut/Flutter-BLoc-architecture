import 'package:flutter/widgets.dart';
import 'package:flutter_code_structure/screens/example1/examplescreen1.dart';
import 'package:flutter_code_structure/screens/example2/examplescreen2.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => ExScreen1(),
  "/ExScreen2": (BuildContext context) => ExScreen2(),
};
