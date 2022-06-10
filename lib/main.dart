import 'package:ecommerce_micro_app_login/app/ecommerce_micro_app_login_resolver.dart';
import 'package:ecommerce_micro_core/ecommerce_micro_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/splash',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
    EcommerceMicroAppLoginResolver(),
  ];
}
