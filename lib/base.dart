import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp2/Ui/Stores.dart';
import 'package:flutterapp2/utils/Localizations/DemoLocalizations.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const DemoLocalizationsDelegate(),
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
        Locale("en", ""), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("en", ""),
      title: 'myapp',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.

        '/': (context) =>  Stores( ) ,
        // When navigating to the "/" route, build the FirstScreen widget.
        '/Stores': (context) => Stores( ),

      },
    );
  }
}
