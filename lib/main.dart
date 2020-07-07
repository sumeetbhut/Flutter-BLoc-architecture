import 'package:flutter/material.dart';
import 'package:flutter_code_structure/theme/style.dart';
import 'package:flutter_code_structure/routes.dart';
import 'package:flutter_code_structure/bloc/bloc-prov-tree.dart';
import 'package:flutter_code_structure/bloc/bloc-prov.dart';
import 'package:flutter_code_structure/blocs/blocs.dart';
import 'blocs/blocs.dart';

void main() {
  runApp(ExampleApp());
}
class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}