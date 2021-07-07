import 'package:flutter/material.dart';
import 'package:flutter_ap3/screens/login_screen.dart';
import 'package:flutter_ap3/utils/appsettings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      HomeApp()
  );
}

class HomeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<AppSettings>(create: (context) => AppSettings(),
      ),
    ],
      child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    ) ,
    );
  }
}
