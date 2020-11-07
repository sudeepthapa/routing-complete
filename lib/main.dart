import 'package:flutter/material.dart';
import 'package:routing/pages/home.dart';
import 'package:routing/pages/login.dart';
import 'package:routing/pages/routes.dart';
import 'package:routing/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        // routes: Routes.getRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          final routeName = settings.name;
          final arguments = settings.arguments;
          switch (routeName) {
            case Routes.home:
              return MaterialPageRoute(
                  builder: (_) => Home(
                        title: "title",
                      ));
            case Routes.login:
              return MaterialPageRoute(builder: (_) => Login(data:arguments));
            default:
              return MaterialPageRoute(
                  builder: (_) => Scaffold(
                        body: Center(child: Text("I cannot find the route.")),
                      ));
          }
        },
        initialRoute: Routes.home,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
  }
}
